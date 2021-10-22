class GoalsController < ApplicationController
  
  def index
    @goal = Goal.new
    pp '==========='
    pp @goal
  end
  
   def create
    goals_params = params.require(:goal).permit(:exception_date, :weight)
    @goal = Goal.new(goals_params.merge(user_id: current_user.id))
    @goal.save
    redirect_to '/goals'
   end
  
end