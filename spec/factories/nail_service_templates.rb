FactoryBot.define do
  factory :nail_service_template do
    name { Faker::Name.name }
    service_duration { Faker::Number.number(digits: 2).minutes }
    price { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    
    trait :with_service_category do
      association :service_category, factory: :service_category
    end
  end
end
