class ChangeAddDutaionToServiceDurationColumns < ActiveRecord::Migration[7.1]
  def change
    rename_column :nail_service_templates, :duration, :service_duration
    rename_column :nail_services, :duration, :service_duration
  end
end
