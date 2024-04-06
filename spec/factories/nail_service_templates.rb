FactoryBot.define do
  factory :nail_service_template do
    name { Faker::Name.name }
    duration { Faker::Number.number(1000).minutes }
    price { Faker::Number.decimal(100, 2)}
    service_category { create(:service_category) }
  end
end
