module NailService
  class BookingService < Grape::API
    resource :booking_service do
      desc "return all employees"

      get do
        nail_employees = NailEmployee.all
        present nail_employees
      end
    end
  end
end