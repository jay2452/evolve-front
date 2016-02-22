class SchoolSchoolActivity < ActiveRecord::Migration
  def change
    create_table(:school_school_activity) do |t|
      t.integer :school_id
      t.integer :school_activity_id
    end    
  end
end
