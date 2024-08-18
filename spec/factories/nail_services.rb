FactoryBot.define do
  factory :nail_service do
    name { Faker::Name.name }
    service_duration { Faker::Number.number(digits: 2).minutes }
    price { Faker::Number.decimal(l_digits: 2) }
    nail_employee { create(:nail_employee) }
    nail_service_template { create(:nail_service_template, :with_service_category) }
  end
end
