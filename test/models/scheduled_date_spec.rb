require 'spec_helper'
require 'rails_helper'

describe ScheduledDate, type: :model do
  it { should have_many(:scheduled_services) }
  it { should belong_to(:nail_employee) }

  before do
    @scheduled_date = create(:scheduled_date)
  end
end
