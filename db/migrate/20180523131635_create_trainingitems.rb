class CreateTrainingitems < ActiveRecord::Migration[5.2]
  def change
    create_table :trainingitems do |t|
      t.string :name
      t.text :description
      t.boolean :status

      t.timestamps
    end
  end
end
