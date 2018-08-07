class ChangeAppointmentToFalseInAppointment < ActiveRecord::Migration[5.2]
  def change
    change_column :appointments, :confirmed, :boolean, default: :false
  end
end
