class CreateNailServices < ActiveRecord::Migration[7.1]
  def change
    create_table :nail_services do |t|
      t.interval :duration, null: false
      t.integer :price, null: false
      t.timestamps
    end
  end
end
