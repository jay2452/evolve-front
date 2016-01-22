class AddDetailsToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :name, :string
    add_column :doctors, :reg_id, :string
    add_column :doctors, :address, :text
    add_column :doctors, :description, :text
  end
end
