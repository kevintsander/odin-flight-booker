class Passenger < ApplicationRecord
  has_many :passengers_bookings
  has_many :bookings, through: :passengers_bookings

  validates :email, presence: true
  validates :name, presence: true
end
