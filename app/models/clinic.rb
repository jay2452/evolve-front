class Clinic < ActiveRecord::Base
  # establish_connection(:external_db)
  # self.table_name = "doctors"

  has_many :doctor_clinic
  has_many :doctors, through: :doctor_clinic

  has_many :appointments
end
