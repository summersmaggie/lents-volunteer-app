class AddTimeSlotTable < ActiveRecord::Migration[5.2]
  def change
    create_table :time_slot do |t|
      t.string :name
      t.datetime :start_time
      t.integer :appointment_id
      t.string :contact_info

      t.timestamps
    end
  end
end
