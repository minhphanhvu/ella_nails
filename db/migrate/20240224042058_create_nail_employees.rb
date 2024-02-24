class CreateNailEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :nail_employees do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
