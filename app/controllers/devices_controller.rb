class Admin::DevicesController < ApplicationController
  def index
     @devices = current_user.devices
  end

  def show
    @device = Device.find(params[:id])
  end

  def new

  end

  def create

  end
end
