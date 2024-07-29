class NailServiceTemplate < ApplicationRecord
  belongs_to :service_category
  has_many :nail_services

  validates_presence_of :name, :service_duration, :price
end
