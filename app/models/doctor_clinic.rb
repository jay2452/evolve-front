class DoctorClinic < ActiveRecord::Base
  # establish_connection(:external_db)
   self.table_name = "doctor_clinic"

   belongs_to :clinic
   belongs_to :doctor


end
