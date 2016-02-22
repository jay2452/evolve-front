class AddDeatilsToSchoolsTable < ActiveRecord::Migration
  def change
    add_column :schools, :name, :string
    add_column :schools, :description, :string
    add_column :schools, :fee_structure, :string
    add_column :schools, :logo_url, :string
    add_column :schools, :contact_no, :string
    add_column :schools, :x_coord, :string
    add_column :schools, :y_coord, :string
    add_column :schools, :address, :text
    add_column :schools, :principal_name, :string

  end
end
