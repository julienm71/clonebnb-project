class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about]
  def home
    @places = Place.all
  end
  def about
  end
end
