class ExerciseSet < ApplicationRecord
  belongs_to :exercise, inverse_of: :sets #exercise_sets?
end
