class AddBirthDayToTrainer < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :birth_date, :date
  end
end
