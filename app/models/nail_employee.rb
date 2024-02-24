class NailEmployee < ApplicationRecord
  has_many :nail_services

  validates_presence_of :name
end
