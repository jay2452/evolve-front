class SchoolSchoolAffiliation < ActiveRecord::Migration
  def change
    create_table(:school_school_affiliation) do |t|
      t.integer :school_id
      t.integer :school_affiliation_id
    end

  end
end
