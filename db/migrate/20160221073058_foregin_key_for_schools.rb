class ForeginKeyForSchools < ActiveRecord::Migration
  def change

    add_foreign_key :school_school_type, :school_types, dependent: :delete
    add_foreign_key :school_school_affiliation, :school_affiliations, dependent: :delete
    add_foreign_key :school_school_activity, :school_activities, dependent: :delete

    add_foreign_key :school_school_type, :schools, dependent: :delete
    add_foreign_key :school_school_affiliation, :schools, dependent: :delete
    add_foreign_key :school_school_activity, :schools, dependent: :delete
  end
end
