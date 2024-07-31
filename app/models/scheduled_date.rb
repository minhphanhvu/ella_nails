class ScheduledDate < ApplicationRecord
  has_many :scheduled_services, dependent: :destroy
  belongs_to :nail_employee
end
