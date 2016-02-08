class DoctorSpecializationController < ApplicationController
  before_action :authenticate_doctor!

  def index
    @doctor = current_doctor
    @specializations = Specialization.all

    s_ids = @specializations.all.map(&:id)

    working_specialization_ids = DoctorSpecialization.where("doctor_id = ?", current_doctor.id).all.map(&:spec_id)
    remaining_specialization_ids = (s_ids - working_specialization_ids)

    @remaining_specializations = Specialization.where("id IN (?)", remaining_specialization_ids)
  end

  def create
    idArray = []

    params.each do |key, value|
      idArray << key.to_i if value.to_i==1
    end

    idArray.each do |s_id|
      DoctorSpecialization.create!(doctor_id: current_doctor.id, spec_id: s_id)
    end

    redirect_to :back
  end
end
