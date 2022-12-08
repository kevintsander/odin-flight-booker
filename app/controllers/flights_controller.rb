class FlightsController < ApplicationController
  def index
    @search = params[:search] || {}
    @flights = Flight.search(params[:search]).page(params[:page])

    @number_of_passengers = params[:number_of_passengers]
  end
end
