class ServiceCategory < ApplicationRecord
  has_many :nail_service_templates, dependent: :destroy
end
