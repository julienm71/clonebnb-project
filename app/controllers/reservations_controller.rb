class ReservationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_place_instance

  def index
    @reservation = policy_scope(Reservation).order(created_at: :desc)
  end

  def new
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
  end

  def destroy
    authorize @reservation
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def set_place_instance
    @place = Place.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:reserved_at, :category_id, :place_id)
  end
end
