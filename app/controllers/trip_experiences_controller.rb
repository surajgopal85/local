class TripExperiencesController < ApplicationController
  def create
    @trip = Trip.find(params[:trip_id])
    @experience = Experience.find(params[:id])

    @trip_experience = TripExperience.new()
    @trip_experience.trip = @trip
    @trip_experience.experience = @experience
    if @trip_experience.save
      redirect_to trip_path(@trip)
    else
      render 'trips/show', status: :unprocessable_entity
    end
  end

  def destroy
    @trip_experience = TripExperience.find(params[:id])
    @trip_experience.destroy
    redirect_to trip_path(@trip)
  end
end
