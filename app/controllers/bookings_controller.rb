class BookingsController < ApplicationController
  def new
    # we need the devise
    @device = Device.find(params[:device_id])
    # we need an empty booking
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @device =Device.find(params[:device_id])
    @booking.device =  @device
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path(current_user)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:message)
  end
end
