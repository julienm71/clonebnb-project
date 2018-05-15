class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to places_path(@place)
    else
      render :new
    end
  end

private

  def place_params
    params.require(:place).permit(:description, :name, :photo, :address, :user_id)
  end
end
