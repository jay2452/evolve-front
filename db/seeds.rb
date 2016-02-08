# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Admin.destroy_all
Specialization.destroy_all

admin = Admin.create!(email: "admin@evolve.com", password: "987654321")
admin.add_role "admin"

Specialization.create(detail: "ENT")
Specialization.create(detail: "Audiologist")
Specialization.create(detail: "Cardiologist")
Specialization.create(detail: "Dentist")
Specialization.create(detail: "Dermatologist")
Specialization.create(detail: "Gynecologist")
Specialization.create(detail: "General Physician")
Specialization.create(detail: "Psychiatrist")
Specialization.create(detail: "Neurologist")
Specialization.create(detail: "Pediatrician")
Specialization.create(detail: "Plastic Surgeon")
Specialization.create(detail: "Urologist")
