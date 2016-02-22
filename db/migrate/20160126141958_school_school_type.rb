class SchoolSchoolType < ActiveRecord::Migration
  def change
    create_table(:school_school_type) do |t|
      t.integer :school_id
      t.integer :school_type_id
    end
  end
end
