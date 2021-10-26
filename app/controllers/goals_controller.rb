class GoalsController < ApplicationController
  
  def index
    @goal = if current_user.goals.where('expiration_date >= ?', Date.current).exists?
              current_user.goals.where('expiration_date >= ?', Date.current).first
            else
              Goal.new
            end
    
  end
  
   def create
    goals_params = params.require(:goal).permit(:exception_date, :weight)
    @goal = Goal.new(goals_params.merge(user_id: current_user.id))
    @goal.save
    redirect_to '/goals'
   end
  
end