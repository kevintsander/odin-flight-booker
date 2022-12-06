class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'

  has_many :bookings

  def arrive_datetime
    depart_datetime + duration_minutes.minutes
  end

  def self.search(search)
    result = Flight.all
    if search
      result = result.where(departure_airport_id: search[:departure_airport_id]) if search[:departure_airport_id]
      result = result.where(arrival_airport_id: search[:arrival_airport_id]) if search[:arrival_airport_id]
      result = result.where('date(depart_datetime) = ?', search[:depart_date]) if search[:depart_date]
    end
    result.order(:depart_datetime)
  end
end
