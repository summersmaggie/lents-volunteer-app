class UpdateTimeSlotTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :time_slot, :time_slots
  end
end
