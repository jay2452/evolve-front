class Specialization < ActiveRecord::Base
  # establish_connection(:external_db)
  # self.table_name = "doctors"

  has_many :doctor_specialization
  has_many :doctors, through: :doctor_specialization
end
