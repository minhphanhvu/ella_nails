class RemoveScheduledDateFromScheduledSlots < ActiveRecord::Migration[7.1]
  def change
    # actually not remove scheduled date - just a wrong migration name
    remove_column :scheduled_slots, :notes
    remove_column :scheduled_slots, :customer_id
    remove_index :scheduled_slots, :customer_id if index_exists?(:scheduled_slots, :customer_id)
    remove_column :scheduled_slots, :time_start
    remove_column :scheduled_slots, :time_end
  end
end
