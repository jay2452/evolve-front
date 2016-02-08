class HomePagesController < ApplicationController
  def index
    # response = HTTParty.get("http://www.letshareit.in/uploads.json").to_json
    #
    #  @file_list = JSON.parse(response)
    #
    # puts "========================="
    #   p response
    #
    # puts "==========================="

    @doctors = Doctor.all

    @clinics = Clinic.all

    puts "================================"
      p @doctors
    puts "================================"

    @appointments = current_doctor.appointments if current_doctor
  end
end
