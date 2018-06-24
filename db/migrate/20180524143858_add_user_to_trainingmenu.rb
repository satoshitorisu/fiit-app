class AddUserToTrainingmenu < ActiveRecord::Migration[5.2]
  def change
    add_reference :trainingmenus, :user, foreign_key: true
  end
end
