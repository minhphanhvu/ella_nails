class CreateTableNailServiceTemplate < ActiveRecord::Migration[7.1]
  def change
    create_table :nail_service_templates do |t|
      t.interval :duration, null: false
      t.float :price, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
