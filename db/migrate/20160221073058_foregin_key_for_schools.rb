class ForeginKeyForSchools < ActiveRecord::Migration
  def change
    add_foreign_key :school_school_type, :schools, dependent: :delete
    add_foreign_key :school_school_affiliation, :schools, dependent: :delete
    add_foreign_key :school_school_activity, :schools, dependent: :delete
  end
end
