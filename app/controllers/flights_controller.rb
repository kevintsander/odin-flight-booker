class FlightsController < ApplicationController
  def index
    @flights = Flight.search({ departure_airport_id: params[:departure_airport_id],
                               arrival_airport_id: params[:arrival_airport_id],
                               depart_date: params[:depart_date] }).page params[:page]
  end
end
