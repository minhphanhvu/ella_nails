class NailServiceTemplate < ApplicationRecord
  belongs_to :service_category
  has_many :nail_services, dependent: :destroy
end
