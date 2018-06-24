class AddTrainingnameToTrainingactual < ActiveRecord::Migration[5.2]
  def change
    add_column :trainingactuals, :trainingname, :string
  end
end
