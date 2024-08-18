class BookingServiceApi < Grape::API
  helpers BookingServiceHelper

  resource :booking_service do
    desc "booking nail services"

    params do
      # date: date of booking
      # array of nail_service_ids
      # nail_employee_id: id of nail employee
      # start_time: time of the booking date
      requires :date, type: Date
      requires :nail_service_ids, type: Array[Integer]
      requires :nail_employee_id, type: Integer
      requires :start_time, type: Time
    end

    # must calculate the stop time based on the nail services' durations
    post do
      scheduled_date = ScheduledDate.create!(
        scheduled_date: params[:date],
        start_time: params[:start_time],
        nail_employee_id: params[:nail_employee_id]
      )

      nail_services = NailService.where(id: params[:nail_service_ids])
      scheduled_date.scheduled_services =
        create_scheduled_services(nail_services, scheduled_date.id, scheduled_date.start_time)

      stop_time = nail_services.sum(:service_duration).seconds.since(scheduled_date.start_time)
      scheduled_date.update!(stop_time:)

      present scheduled_date
    end
  end
end
