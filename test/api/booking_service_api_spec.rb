require 'spec_helper'
require 'rails_helper'

RSpec.describe BookingServiceApi, type: :request do
  let(:nail_employee) { 
    create(
      :nail_employee,
      :with_one_nail_service,
      nail_service_attributes: { service_duration: 60.minutes, price: 20.0 }
    )
  }

  it "do sth" do
  end
end