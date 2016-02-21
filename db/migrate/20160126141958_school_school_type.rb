class SchoolSchoolType < ActiveRecord::Migration
  def change
    create_table(:school_school_type) do |t|
      t.integer :school_id
      t.integer :school_type_id
    end

    add_foreign_key :school_school_type, :school_types, dependent: :delete
    
  end
end
