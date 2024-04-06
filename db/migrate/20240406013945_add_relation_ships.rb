class AddRelationShips < ActiveRecord::Migration[7.1]
  def change
    add_reference :nail_service_templates, :service_category, null: false, foreign_key: true
    add_reference :nail_services, :nail_service_template, null: false, foreign_key: true
    remove_reference :nail_services, :service_category, index: true, foreign_key: true
  end
end
