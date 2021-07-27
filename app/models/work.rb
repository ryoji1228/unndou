class Work < ApplicationRecord
    has_many :exercise_works
    has_many :exercises, through: :exercise_works
end
