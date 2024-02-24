class AddNailEmployeeRefToNailServices < ActiveRecord::Migration[7.1]
  def change
    add_reference :nail_services, :nail_employee, null: false, foreign_key: true
  end
end
