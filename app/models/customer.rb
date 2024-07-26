class Customer < ApplicationRecord
  validates_presence_of :name, :phone_number, :email
end