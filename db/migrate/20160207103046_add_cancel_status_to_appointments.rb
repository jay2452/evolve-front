class AddCancelStatusToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :cancel, :boolean, default: false
  end
end
