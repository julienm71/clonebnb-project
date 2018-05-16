class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_place_instance, only: [:show, :edit, :update, :destroy]

  def index
    @places = policy_scope(Place).order(created_at: :desc)

    @places = Place.where.not(latitude: nil, longitude: nil)

    if params.dig("search", "city").present?
      search = params["search"]["city"]
      @places = @places.near(search, 10)
    end
    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end

  end

  def show
    authorize @place
    @reservation = Reservation.new
  end

  def new
    @place = Place.new
    authorize @place
  end

  def create
    @place = Place.new(place_params)
    authorize @place
    if @place.save
      redirect_to places_path
    else
      render :new
    end
  end

  def edit
    authorize @place
  end

  def update
    authorize @place
    if @place.update(place_params)
      redirect_to place_path(@place)
    else
      render :edit
    end
  end

  def destroy
    authorize @place
    @place.destroy
    redirect_to places_path
  end

private
  def set_place_instance
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:description, :name, :photo, :address, :user_id, :city)
  end
end
