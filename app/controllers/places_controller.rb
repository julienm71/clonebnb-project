class PlacesController < ApplicationController

  def show
  @place = Place.find(params[:id])
  end

private

  def place_params
    params.require(:place).permit(:description, :name, :photo, :address)
  end

end
