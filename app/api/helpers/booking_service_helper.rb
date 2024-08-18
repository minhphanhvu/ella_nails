module BookingServiceHelper
  def self.create_scheduled_services(
    nail_services,
    scheduled_date_id,
    scheduled_date_start_time
  )
    scheduled_nail_services = []
    first_nail_service = nail_services.first
    scheduled_nail_services << first_nail_service

    first_scheduled_service =
      ScheduledService.create!(
        {
          scheduled_date: ScheduledDate.find(scheduled_date_id),
          name: first_nail_service.name,
          service_duration: first_nail_service.service_duration,
          price: first_nail_service.price,
          start_time: scheduled_date_start_time,
          stop_time: first_nail_service.service_duration.seconds.since(scheduled_date_start_time),
        },
      )

    new_start_time = first_scheduled_service.stop_time

    subsequent_nail_services = nail_services.drop(1).each do |nail_service|
      new_stop_time = nail_service.service_duration.seconds.since(new_start_time)
      ScheduledService.create!(
        scheduled_date_id:,
        name: nail_service.name,
        service_duration: nail_service.service_duration,
        price: nail_service.price,
        start_time: new_start_time,
        stop_time: new_stop_time,
      )

      new_start_time = new_stop_time
    end

    scheduled_nail_services << subsequent_nail_services
  end
end
