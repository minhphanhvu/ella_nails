require 'spec_helper'
require 'rails_helper'

describe ScheduledService, type: :model do
  it { should belong_to(:scheduled_date) }

  before do
    @scheduled_service = create(:scheduled_service)
  end
end
