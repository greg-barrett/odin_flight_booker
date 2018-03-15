class Booking < ApplicationRecord
  belongs_to :passenger
  accepts_nested_attributes_for :passenger
  belongs_to :flight
end
