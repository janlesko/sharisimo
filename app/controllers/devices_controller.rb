class DevicesController < ApplicationController
  def index
    @devices = Device.all
  end

  def show
    @device = Device.find(params[:id])
  end

  def new
    @device = Device.new

  end

  def create
    @user = current_user
    @device = Device.new(device_params)
    @device.user = @user
    @device.availability = true
    @device.save
    redirect_to root_path

  end

  private

  def device_params
    params.require(:device).permit(:name, :category, :photo_url, :description, :price)
  end
end
