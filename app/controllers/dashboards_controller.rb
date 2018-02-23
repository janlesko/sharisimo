class DashboardsController < ApplicationController
  def show
    @user = current_user
    @bookings = @user.bookings
  end
end
