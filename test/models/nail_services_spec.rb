require 'spec_helper'
require 'rails_helper'

describe NailService, type: :model do
  it { should belong_to(:nail_employee) }
  it { should belong_to(:nail_service_template) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:service_duration) }
  it { should validate_presence_of(:price) }

  before do
    @nail_employee = create(:nail_employee)
    @nail_service_template = create(:nail_service_template, :with_service_category)
    @nail_service = create(:nail_service, service_duration: 20.minutes, price: 15.0, nail_employee: @nail_employee, nail_service_template: @nail_service_template)
  end
end
