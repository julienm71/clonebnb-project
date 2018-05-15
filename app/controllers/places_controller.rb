class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end


private

  def place_params
    params.require(:place).permit(:description, :name, :photo, :address)
  end
end
