require 'spec_helper'
require 'rails_helper'

describe NailServiceTemplate, type: :model do
  it { should belong_to(:service_category) }
  it { should have_many(:nail_services).dependent(:destroy) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:duration) }
  it { should validate_presence_of(:price) }

  before do
    
  end
end
