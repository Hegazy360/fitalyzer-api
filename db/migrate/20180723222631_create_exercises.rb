class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.integer :exercise_id
      t.float :weight
      t.integer :reps
      t.integer :sets

      t.timestamps
    end
    add_index :exercises
  end
end
