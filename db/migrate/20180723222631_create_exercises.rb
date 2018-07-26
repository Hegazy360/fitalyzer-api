class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.integer :exercise_id
      t.float :weight
      t.integer :reps
      t.integer :sets
      t.references :gym, foreign_key: true

      t.timestamps
    end
    add_index :exercises, :user_id
  end
end
