class AddCustomerRefToScheduledSlots < ActiveRecord::Migration[7.1]
  def change
    add_reference :scheduled_slots, :customer, foreign_key: true
    add_reference :scheduled_slots, :nail_employee, null: false, foreign_key: true
  end
end
