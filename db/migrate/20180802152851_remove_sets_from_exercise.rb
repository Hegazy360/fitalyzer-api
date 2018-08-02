class RemoveSetsFromExercise < ActiveRecord::Migration[5.2]
  def change
    remove_column :exercises, :sets, :integer
  end
end
