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
    @booking.state = "pending"
    if @booking.save
      redirect_to dashboard_path(current_user)
    else
      render :new
    end
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.state = "declined"
    @booking.save
    redirect_to dashboard_path(current_user)

  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.state = "accepted"
    @booking.save
    @booking.device.availability = false
    @booking.device.save
    redirect_to dashboard_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:message, :startdate, :enddate)
  end
end
