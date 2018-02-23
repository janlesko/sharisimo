class BookingsController < ApplicationController
  def new
    # we need the devise
    @device = Device.find(params[:device_id])
    # we need an empty booking
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.device = Device.find(params[:device_id])
    @booking.user = current_user
    @booking.save
    redirect_to device_path()
  end

  private

  def booking_params
    params.require(:booking).permit(:message)
  end
end
