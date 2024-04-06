require 'spec_helper'
require 'rails_helper'

describe NailServiceTemplate, type: :model do
  it { should belong_to(:service_category) }
  it { should have_many(:nail_services).dependent(:destroy) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:duration) }
  it { should validate_presence_of(:price) }

  before do
    @nail_service_template_1 = create(:nail_service_template, duration: 20.minutes, price: 15.0)
  end

  it "is valid with a name, duration, and price" do
    expect(@nail_service_template_1).to be_valid
  end
end
