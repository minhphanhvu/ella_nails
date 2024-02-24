class AddColumnNameToNailServices < ActiveRecord::Migration[7.1]
  def change
    add_column :nail_services, :name, :string
  end
end
