class CreateTrainingmenus < ActiveRecord::Migration[5.2]
  def change
    create_table :trainingmenus do |t|
      t.date :date

      t.timestamps
    end
  end
end
