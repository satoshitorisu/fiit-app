class CreateTrainingactuals < ActiveRecord::Migration[5.2]
  def change
    create_table :trainingactuals do |t|
      t.references :trainingmenu, foreign_key: true
      t.references :trainingitem, foreign_key: true
      t.integer :time
      t.boolean :status

      t.timestamps
    end
  end
end
