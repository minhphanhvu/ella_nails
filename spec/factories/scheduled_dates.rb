FactoryBot.define do
  factory :scheduled_date do
    scheduled_date { Date.today }
    start_time { Time.now }
    nail_employee { create(:nail_employee) }
  end
end
