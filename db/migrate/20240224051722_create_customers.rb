class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :email, null: false
      t.string :phone_number, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
