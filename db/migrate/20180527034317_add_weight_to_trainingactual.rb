class AddWeightToTrainingactual < ActiveRecord::Migration[5.2]
  def change
    add_column :trainingactuals, :weight, :float
    add_column :trainingactuals, :sets, :integer
  end
end
