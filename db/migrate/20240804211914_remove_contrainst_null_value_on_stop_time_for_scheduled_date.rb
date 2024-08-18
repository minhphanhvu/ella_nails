class RemoveContrainstNullValueOnStopTimeForScheduledDate < ActiveRecord::Migration[7.1]
  def change
    change_column_null :scheduled_dates, :stop_time, true
  end
end
