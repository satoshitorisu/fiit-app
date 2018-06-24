class AddTrainerToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :trainer, foreign_key: true
  end
end
