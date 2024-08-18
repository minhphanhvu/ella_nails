FactoryBot.define do
  factory :nail_employee do
    name { Faker::Name.name }
  end

  trait :with_one_nail_service do
    transient do
      nail_service_attributes { {} }
    end

    after(:create) do |nail_employee, evaluator|
      nail_employee.nail_services << create(:nail_service, evaluator.nail_service_attributes)
    end
  end

  trait :with_two_nail_services do
    transient do
      nail_service_attributes { [{}, {}] }
    end

    after(:create) do |nail_employee, evaluator|
      nail_employee.nail_services << create(:nail_service, evaluator.nail_service_attributes[0])
      nail_employee.nail_services << create(:nail_service, evaluator.nail_service_attributes[1])
    end
  end
end
