class SchoolSchoolActivity < ActiveRecord::Migration
  def change
    create_table(:school_school_activity) do |t|
      t.integer :school_id
      t.integer :school_activity_id
    end

    add_foreign_key :school_school_activity, :school_activities, dependent: :delete
    add_foreign_key :school_school_activity, :schools, dependent: :delete
  end
end
