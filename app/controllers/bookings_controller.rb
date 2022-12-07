class BookingsController < ApplicationController
  def new
    @booking = Booking.new(flight_id: params[:flight_id])
    params[:number_of_passengers].to_i.times do
      @booking.passengers.build
    end
  end

  def create
    @booking = Booking.new(booking_params)
    puts @booking.passengers.size
    if @booking.save
      flash.notice = 'Flight booked! Check e-mail for confirmation.'
      redirect_to root_path
    else
      puts @booking.errors.to_hash
      flash.alert = 'Flight could not be booked!'
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: %i[id name email])
  end
end
