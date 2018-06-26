class AddGoalToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :goalweight, :float
    add_column :users, :goaldate, :date
  end
end
