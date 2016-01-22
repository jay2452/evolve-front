class RemoveCreatedAtFromDoctors < ActiveRecord::Migration
  def change
    remove_column :doctors, :created_at
    remove_column :doctors, :updated_at
  end
end
