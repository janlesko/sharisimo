class BookingsController < ApplicationController
  def new
    # we need the devise
    @device = Device.find(params[:device_id])
    # we need an empty booking
    @booking = Booking.new
  end

end
