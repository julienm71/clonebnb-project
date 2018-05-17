class ReservationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_place_instance, only: [:index, :create]

  def index
    @reservation = policy_scope(Reservation).order(created_at: :desc)
  end

  def create
    @reservation = @place.reservations.new(reservation_params)
    authorize @reservation
    if @reservation.save
      redirect_to reservations_path(@reservation)
    else
      redirect_to place_path(@place)
    end
  end

  def destroy
    authorize @reservation
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def set_place_instance
    @place = Place.find(params[:place_id])
  end

  def reservation_params
    params.require(:reservation).permit(:reserved_at, :category_id, :place_id, :user_id)
  end
end
