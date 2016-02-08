class Doctor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :doctor_clinic
  has_many :clinics, through: :doctor_clinic

  has_many :doctor_specialization
  has_many :specializations, through: :doctor_specialization

  has_many :users, through: :appointments
  has_many :appointments
end
