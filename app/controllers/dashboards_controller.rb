class DashboardsController < ApplicationController
  def show
    @user = current_user
    @bookings = @user.bookings
    @devices = @user.devices
  end
end
