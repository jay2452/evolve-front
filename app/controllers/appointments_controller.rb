class AppointmentsController < ApplicationController

  before_action :authenticate_doctor!

  def cancel_appointment
    @appointment = Appointment.find(params[:id])
    if @appointment.doctor.id == current_doctor.id
      @appointment.cancel = true
      @appointment.save
    # else
    #     notice: 'you are not authorised.'
    end
    redirect_to :back
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    if @appointment.doctor.id == current_doctor.id
      @appointment.destroy
    # else
    #     notice: 'you are not authorised.'
    end
    redirect_to :back
  end

end
