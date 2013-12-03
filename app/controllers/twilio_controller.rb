  class TwilioController < ApplicationController

    require 'open-uri'
    require 'nokogiri'
  def index
    process_sms
  end

  def new
  end

  def create

  end

  def show
  end
 
  def process_sms
    @city = params[:FromCity].capitalize
    @state = params[:FromState]
    @from = params[:From]
    @media = params[:MediaUrl0]
    # u = User.find_by_phone_number(@from)
    # @user = u.name
    # b = params[:Body]

# if b.downcase.include?("question")
#     @type = "Question"
#     @question = u.questions.build(:description => b)
#     @question.save!
#     render 'new_question.xml.erb', :content_type => 'text/xml'
# elsif b.downcase.include?("contact")
#     @type = "Contact"
#     @contact = u.contacts.build(:name => b)
#     @contact.save!
#     render 'new_contact.xml.erb', :content_type => 'text/xml'
# else
#     @type = "Not sure"
    forecast
    render 'response.xml.erb', :content_type => 'text/xml'
end
  

end
  def forecast

    caa = open("http://avalanche.pc.gc.ca/CAAML-eng.aspx?d=TODAY&r=3")
    forecast = Nokogiri::XML(caa)
    dr = forecast.css('mainValue')
    danger = dr.text.split("")

    @alp1 = danger.values_at(0).join
    @alp2 = danger.values_at(1).join
    @alp3 = danger.values_at(2).join
    @tln1 = danger.values_at(3).join
    @tln2 = danger.values_at(4).join
    @tln3 = danger.values_at(5).join
    @btl1 = danger.values_at(6).join
    @btl2 = danger.values_at(7).join
    @btl3 = danger.values_at(8).join

    time = forecast.css('timePosition')
    @timearray1 = time.text.split("T00:00:00Z").values_at(0).join
    @timearray2 = time.text.split("T00:00:00Z").values_at(1).join
    @timearray3 = time.text.split("T00:00:00Z").values_at(2).join

    @location = forecast.css('bulletinTitle').text

end
  # def send_text_message (number)

    
  #   twilio_sid = "ACfd6d259169da6e7b70c24d25eefba271"
  #   twilio_token = "4d2913e449a85feb59ad01208950c537"
  #   twilio_phone_number = "6042272070"

  #   @client = Twilio::REST::Client.new(twilio_sid, twilio_token)

  #   @client.account.messages.create(
  #     :from => "+1#{twilio_phone_number}",
  #     :to => number,
  #     :body => "Alpine: #{@alp1} Treeline: #{@tln1}, Below Treeline: #{@btl1}" )
  # end