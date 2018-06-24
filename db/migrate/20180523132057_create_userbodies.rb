class CreateUserbodies < ActiveRecord::Migration[5.2]
  def change
    create_table :userbodies do |t|
      t.string :date
      t.float :weight
      t.float :bodyfat

      t.timestamps
    end
  end
end
