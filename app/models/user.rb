

class User < ActiveRecord::Base
  validates_presence_of :name
  has_many :observations
  
    require 'open-uri'
    require 'nokogiri'

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def forecast

    caa = open("http://avalanche.pc.gc.ca/CAAML-eng.aspx?d=TODAY&r=3")
    forecast = Nokogiri::XML(caa)
    dr = forecast.css('mainValue')
    danger = dr.text.split("")

    @alp1 = danger.values_at(0)
    @alp2 = danger.values_at(1)
    @alp3 = danger.values_at(2)
    @tln1 = danger.values_at(3)
    @tln2 = danger.values_at(4)
    @tln3 = danger.values_at(5)
    @btl1 = danger.values_at(6)
    @btl2 = danger.values_at(7)
    @btl3 = danger.values_at(8)

  end


  def send_text_message (number)

    
    twilio_sid = "ACfd6d259169da6e7b70c24d25eefba271"
    twilio_token = "4d2913e449a85feb59ad01208950c537"
    twilio_phone_number = "6042272070"

    @client = Twilio::REST::Client.new(twilio_sid, twilio_token)

    @client.account.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => user_number,
      :body => "Alpine: #{@alp1} Treeline: #{@tln1}, Below Treeline: #{@btl1}" )
  end
end
