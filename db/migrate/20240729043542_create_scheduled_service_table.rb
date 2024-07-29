class CreateScheduledServiceTable < ActiveRecord::Migration[7.1]
  def change
    create_table :scheduled_services do |t|
      t.time :start_time, null: false
      t.time :stop_time, null: false
      t.float :price, null: false
      t.interval :service_duration, null: false
      t.references :scheduled_date, null: false, foreign_key: true

      t.timestamps
    end
  end
end
