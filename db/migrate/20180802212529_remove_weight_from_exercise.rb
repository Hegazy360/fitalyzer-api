class RemoveWeightFromExercise < ActiveRecord::Migration[5.2]
  def change
    remove_column :exercises, :weight, :integer
  end
end
