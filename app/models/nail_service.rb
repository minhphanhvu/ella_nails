class NailService < ApplicationRecord
  belongs_to :nail_employee
  belongs_to :nail_service_template

  validates_presence_of :name, :duration, :price
end
