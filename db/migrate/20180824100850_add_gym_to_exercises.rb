class AddGymToExercises < ActiveRecord::Migration[5.2]
  def change
    add_reference :exercises, :gym, foreign_key: true
  end
end
