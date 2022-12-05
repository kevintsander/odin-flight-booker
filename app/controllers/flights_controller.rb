class FlightsController < ApplicationController
  def index
    @flights = Flight.search({ departure_airport_id: params[:departure_airport_id],
                               arrival_airport_id: params[:arrival_airport_id],
                               depart_date: depart_date }).page params[:page]
  end

  private

  def depart_date
    return unless params['depart_date(1i)'] && params['depart_date(2i)'] && params['depart_date(3i)']

    Date.new(params['depart_date(1i)'].to_i,
             params['depart_date(2i)'].to_i,
             params['depart_date(3i)'].to_i)
  end
end
