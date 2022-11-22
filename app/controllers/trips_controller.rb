class TripsController < ApplicationController

  def index
    # @trips = Trip.where(user_id: current_user.id)
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end
end
