class FlightsController < ApplicationController
  def index
    @flights = Flight.search({ departure_airport_id: params[:departure_airport_id],
                               arrival_airport_id: params[:arrival_airport_id],
                               depart_date: SharedMethods.date_from_param_parts(params,
                                                                                'depart_date') }).page params[:page]

    @number_of_passengers = params[:number_of_passengers]
  end
end
