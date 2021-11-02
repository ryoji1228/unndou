class GoalsController < ApplicationController
  def index
    @new_goal = Goal.new
    @goal = current_user.current_goal
  end

  def create
    goals_params = params.require(:goal).permit(:expiration_date, :weight)
    @goal = Goal.new(goals_params.merge(user_id: current_user.id))
    @goal.save
    redirect_to '/goals'
  end
end
