class AddIndexToScheduledDate < ActiveRecord::Migration[7.1]
  def change
    add_index :scheduled_dates, :scheduled_date
  end
end
