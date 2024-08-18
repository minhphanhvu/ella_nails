class AddStopTimeAndStartTimeToScheduledDate < ActiveRecord::Migration[7.1]
  def change
    add_column :scheduled_dates, :start_time, :time, null: false
    add_column :scheduled_dates, :stop_time, :time, null: false
  end
end
