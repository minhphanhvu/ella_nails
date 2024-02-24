class ChangeIntegerToFloat < ActiveRecord::Migration[7.1]
  def change
    change_column :nail_services, :price, :float
  end
end
