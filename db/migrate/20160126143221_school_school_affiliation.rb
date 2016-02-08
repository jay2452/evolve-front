class SchoolSchoolAffiliation < ActiveRecord::Migration
  def change
    create_table(:school_school_affiliation) do |t|
      t.integer :school_id
      t.integer :school_affiliation_id
    end

    add_foreign_key :school_school_affiliation, :school_affiliations, dependent: :delete
    add_foreign_key :school_school_affiliation, :schools, dependent: :delete
  end
end
