class Exercise < ApplicationRecord
  belongs_to :gym
  has_many :sets, foreign_key: "exercise_id", class_name: "ExerciseSet"
end
