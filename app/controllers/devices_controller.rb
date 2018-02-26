class DevicesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  # def index
  #   @devices = Device.all
  # end

  def index
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
    params.require(:device).permit(:name, :category, :photo_url, :description, :price, :address)
  end
end
