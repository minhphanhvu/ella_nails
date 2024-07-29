class ScheduledDate < ApplicationRecord
  has_many :scheduled_services, dependent: :destroy
end
