FactoryBot.define do
  factory :scheduled_date do
    scheduled_date { Date.today }
    nail_employee { create(:nail_employee) }
  end
end
