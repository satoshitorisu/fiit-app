class AddTaskToTrainingmenu < ActiveRecord::Migration[5.2]
  def change
    add_column :trainingmenus, :task, :string
  end
end
