class AddRepsToExerciseSets < ActiveRecord::Migration[5.2]
  def change
    add_column :exercise_sets, :reps, :integer
  end
end
