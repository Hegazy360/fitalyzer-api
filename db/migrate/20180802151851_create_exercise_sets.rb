class CreateExerciseSets < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_sets do |t|
      t.references :exercise, foreign_key: true
      t.integer :weight

      t.timestamps
    end
  end
end
