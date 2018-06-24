class CreateWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :weights do |t|
      t.references :user, foreign_key: true
      t.date :date
      t.float :weightactual
      t.float :weightplan

      t.timestamps
    end
  end
end
