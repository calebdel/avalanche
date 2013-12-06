
class ObservationsController < ApplicationController
  require 'open-uri'
  require 'nokogiri'

  def index
    caa = open("http://avalanche.pc.gc.ca/CAAML-eng.aspx?d=TODAY&r=3")
    forecast = Nokogiri::XML(caa)
    dr = forecast.css('mainValue')
    danger = dr.text.split("").map(&:to_i)
    time = forecast.css('timePosition')
    @timearray1 = time.text.split("T00:00:00Z").values_at(0).join
    @timearray2 = time.text.split("T00:00:00Z").values_at(1).join
    @timearray3 = time.text.split("T00:00:00Z").values_at(2).join

    @alp1 = danger.slice(0)
    @alp2 = danger.slice(1)
    @alp3 = danger.slice(2)
    @tln1 = danger.slice(3)
    @tln2 = danger.slice(4)
    @tln3 = danger.slice(5)
    @btl1 = danger.slice(6)
    @btl2 = danger.slice(7)
    @btl3 = danger.slice(8)
    
    gon.alp1 = @alp1
    gon.alp2 = @alp2
    gon.alp3 = @alp3

    gon.tln1 = @tln1
    gon.tln2 = @tln2
    gon.tln3 = @tln3

    gon.btl1 = @btl1
    gon.btl2 = @btl2
    gon.btl3 = @btl3

    gon.timearray1 = @timearray1
    gon.timearray2 = @timearray2
    gon.timearray3 = @timearray3

    @observations = Observation.all


  end

  def new
    @observation = Observation.new
  end

  def create
    @observation = Observation.new(observation_params)
      if @observation.save
        redirect_to observations_url
      else
        render :new
      end
  end

  def show
    @observation = Observation.find(params[:id])
  end

  def show
    @obervation = Observation.find(params[:id])
  end



  def edit
    @observation = Observation.find(params[:id])
  end
  
  def update
    @observation = Observation.find(params[:id])
    if @observation.update_attributes(observation_params)
      flash[:success] = "Observation updated"
      redirect_to 'root'
    else
      render 'edit'
    end
  end

  private
  
  def observation_params
    params.require(:observation).permit(:photo, :description, :content, :name, :tag_list)
  end

  
end