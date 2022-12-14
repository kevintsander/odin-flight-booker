class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = @flight.bookings.new
    params[:number_of_passengers].to_i.times do
      @booking.passengers.build
    end
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      flash.notice = 'Flight booked! Check e-mail for confirmation.'
      redirect_to booking_path(@booking)
    else
      flash.now.alert = "Flight could not be booked!<br> - #{@booking.errors.full_messages.uniq.join('<br> - ')}"
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: %i[id name email])
  end
end
