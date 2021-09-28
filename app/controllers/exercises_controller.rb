class ExercisesController < ApplicationController
    
    def index
        @exercises = Exercise.all
    end
    
    def create
        
    end
    
    def new
    end
    
    def edit
    end
    
    def update
    end
    
    def show
        @exercises = Exercise.find(params[:id])
    end
    
    def destroy
    end
    
end