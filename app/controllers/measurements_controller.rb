class MeasurementsController < ApplicationController
  def index
   
    @measurements = Measurement.all
  end
  
  def new
    @measurement = Measurement.new
  end
  
  def create
    measurement_params = params.require(:measurement).permit(:month, :day, :weight)
    @measurement = Measurement.new(measurement_params)
    @measurement.save
    
  end
end
