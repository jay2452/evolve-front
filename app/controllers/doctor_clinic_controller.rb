class DoctorClinicController < ApplicationController
  before_action :authenticate_doctor!

  def index
    @clinics = Clinic.all
    @doctor = current_doctor

    c_ids = Clinic.all.map(&:id)

    working_clinic_ids = DoctorClinic.where("doctor_id = ?", current_doctor.id).all.map(&:clinic_id)
    remaining_clinic_ids = (c_ids - working_clinic_ids)

    @remaining_clinics = Clinic.where("id IN (?)", remaining_clinic_ids)  # => clinic where doctor is not yet registered

  end


  def create
    idArray = []

    params.each do |key, value|
      idArray << key.to_i if value.to_i==1
    end

    idArray.each do |c_id|
      DoctorClinic.create!(doctor_id: current_doctor.id, clinic_id: c_id)
    end

    redirect_to :back
  end

end
