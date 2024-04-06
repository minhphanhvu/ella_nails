class NailServiceTemplate < ApplicationRecord
  belongs_to :service_category
  has_many :nail_services, dependent: :destroy

  validates_presence_of :name, :duration, :price
end
