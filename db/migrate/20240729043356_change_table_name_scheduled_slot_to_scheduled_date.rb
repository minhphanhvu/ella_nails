class ChangeTableNameScheduledSlotToScheduledDate < ActiveRecord::Migration[7.1]
  def change
    rename_table :scheduled_slots, :scheduled_dates
  end
end
