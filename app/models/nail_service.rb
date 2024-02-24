class NailService < ApplicationRecord
  belongs_to :nail_employee
  belongs_to :service_category

  validates_presence_of :duration, :price
end
