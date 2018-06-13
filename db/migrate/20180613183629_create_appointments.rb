class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :name
      t.datetime :start_time
      t.string :address
      t.string :contact_info

      t.timestamps
    end
  end
end
