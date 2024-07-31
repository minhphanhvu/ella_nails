class AddNameColumnToScheduledService < ActiveRecord::Migration[7.1]
  def change
    add_column :scheduled_services, :name, :string, null: false
  end
end
