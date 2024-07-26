require 'spec_helper'
require 'rails_helper'

describe Customer, type: :model do
  it { should validate_presence_of(:name) }

  before do
    @customer = create(:customer)
  end
end