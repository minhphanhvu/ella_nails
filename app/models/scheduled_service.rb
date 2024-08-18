class ScheduledService < ApplicationRecord
  belongs_to :scheduled_date

  def scheduled_service_params
    params.require(:scheduled_service).permit(
      :name,
      :service_duration,
      :price,
      :start_time,
      :stop_time,
      :scheduled_date_id
    )
  end
end