class TripsController < ApplicationController

  def index
    @trips = Trip.all.where(user_id: current_user.id)
  end

  def show
    @trip = Trip.find(params[:id])
  end


  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user

    if @trip.save
      redirect_to trip_path(@trip)
    else
      render "trips/new_trip_modal", trip: @trip, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to trips_path, notice: "Your trip was successfully deleted."
  end

  private

  def trip_params
    params.require(:trip).permit(:city, :start_date, :end_date)
  end
end
