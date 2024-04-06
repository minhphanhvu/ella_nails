require 'spec_helper'

describe NailService do
  it { should belong_to(:nail_employee) }
  it { should belong_to(:service_category) }
  it { should validate_presence_of(:duration) }
  it { should validate_presence_of(:price) }
  
end
