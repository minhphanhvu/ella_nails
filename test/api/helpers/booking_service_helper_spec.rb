require "spec_helper"
require "rails_helper"

RSpec.describe BookingServiceHelper, type: :request do
  let!(:nail_employee) do
    create(
      :nail_employee,
      :with_two_nail_services,
      nail_service_attributes: [
        { service_duration: 60.minutes, price: 20.0 },
        { service_duration: 30.minutes, price: 10.0 }
      ],
    )
  end

  let!(:scheduled_date) { create(:scheduled_date, nail_employee:) }
  let(:nail_services) { nail_employee.nail_services }

  it "creates scheduled services" do
    scheduled_services = described_class.create_scheduled_services(
      nail_services,
      scheduled_date.id,
      scheduled_date.start_time,
    )

    expect(scheduled_services.count).to eq(2)
  end
end
