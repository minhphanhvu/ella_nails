class NailEmployee < ApplicationRecord
  has_many :nail_services, dependent: :destroy
  has_many :scheduled_dates, dependent: :destroy

  validates_presence_of :name
end
