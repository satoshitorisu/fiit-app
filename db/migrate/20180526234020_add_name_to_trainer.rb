class AddNameToTrainer < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :username, :string
    add_column :trainers, :first_name, :string
    add_column :trainers, :last_name, :string
    add_column :trainers, :first_name_kana, :string
    add_column :trainers, :last_name_kana, :string
  end
end
