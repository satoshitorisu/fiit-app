class AddCompanyToTrainer < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :company, :string
    add_column :trainers, :description, :text
    add_column :trainers, :qualification, :string
  end
end
