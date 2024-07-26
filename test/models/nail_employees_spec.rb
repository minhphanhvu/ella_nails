require 'spec_helper'
require 'rails_helper'

describe NailEmployee, type: :model do
  it { should have_many(:nail_services).dependent(:destroy) }
  it { should validate_presence_of(:name) }

  before do
    @nail_employee = create(:nail_employee)
  end

  it "is valid with a name" do
    expect(@nail_employee).to be_valid
  end

  it "is not valid without a name" do
    expect(build(:nail_employee, name: nil)).to_not be_valid
  end
end
