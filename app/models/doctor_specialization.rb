class DoctorSpecialization < ActiveRecord::Base
  # establish_connection(:external_db)
   self.table_name = "doctor_specialization"

   belongs_to :specialization, foreign_key: "spec_id"
   belongs_to :doctor


end
