class Exercise < ApplicationRecord
    
    
    has_many :exercise_work
    has_many :work, through: :exercise_work
    
    belongs_to :user
    
end
