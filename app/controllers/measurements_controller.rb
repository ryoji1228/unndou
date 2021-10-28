class MeasurementsController < ApplicationController
  def index
    @measurements = current_user.measurements
    @measurement = Measurement.new
  end
  
  def create
    measurement_params = params.require(:measurement).permit(:weight)
    @measurement = Measurement.new(measurement_params.merge(user_id: current_user.id, date: Date.current))
    @measurement.save
    current_user.weight = @measurement.weight
    current_user.save
    redirect_to '/measurements'
  end
end
