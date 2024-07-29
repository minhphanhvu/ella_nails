FactoryBot.define do
  factory :nail_service do
    name { Faker::Name.name }
    service_duration { Faker::Number.number(1000).minutes }
    price { Faker::Number.decimal(100, 2) }
    nail_employee { create(:nail_employee) }
    nail_service_template { create(:nail_service_template) }
  end
end
