class MeasurementsController < ApplicationController
  def index
    @measurements = current_user.measurements
    @measurement = Measurement.new
  end
  
  def create
    measurement_params = params.require(:measurement).permit(:date, :weight)
    @measurement = Measurement.new(measurement_params.merge(user_id: current_user.id))
    @measurement.save
    redirect_to '/measurements'
  end
end
