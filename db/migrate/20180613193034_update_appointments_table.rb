class UpdateAppointmentsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :special_instructions, :string
    add_column :appointments, :time_slot_id, :int
    
  end
end
