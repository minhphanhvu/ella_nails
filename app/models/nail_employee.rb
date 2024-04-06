class NailEmployee < ApplicationRecord
  has_many :nail_services, dependent: :destroy

  validates_presence_of :name
end
