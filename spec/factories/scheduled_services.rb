FactoryBot.define do
  factory :scheduled_service do
    name { Faker::Name.name }
    start_time { "2020-01-01 09:00:00" }
    stop_time { "2020-01-01 10:00:00" }
    service_duration { 60.minutes }
    price { 15.0 }
    scheduled_date { create(:scheduled_date) }
  end
end
