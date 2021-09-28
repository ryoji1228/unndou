class MeasurementController < ApplicationController
    
    def index
        @measurements = Measurement.all
    end
    
    def create
        @measurements = Measurement.new
    end
    
    def destroy
    end
    
    
    
end