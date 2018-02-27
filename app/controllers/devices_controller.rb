class DevicesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    flash[:alert] = nil

    @devices = Device.where.not(latitude: nil, longitude: nil)

    @markers = @devices.map do |d|
      {
        lat: d.latitude,
        lng: d.longitude#,
        # infoWindow: { content: render_to_string(partial: "/devices/map_box", locals: { device: device }) }
      }
    end
  end

  def show
    flash[:alert] = nil
    @device = Device.find(params[:id])
    flash[:alert] = "Device is not available" unless @device.availability
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
    params.require(:device).permit(:name, :category, :photo_url, :description, :price, :address)
  end
end
