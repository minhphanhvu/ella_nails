class CreateScheduledSlots < ActiveRecord::Migration[7.1]
  def change
    create_table :scheduled_slots do |t|
      t.time :time_start, null: false 
      t.time :time_end, null: false
      t.date :scheduled_date, null: false
      t.string :notes

      t.timestamps
    end
  end
end
