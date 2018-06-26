class CreateTrainingitems < ActiveRecord::Migration[5.2]
  def change
    create_table :trainingitems do |t|
      t.string :name
      t.string :part
      t.text :description

      t.timestamps
    end
  end
end
