class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def my_experiences
    @trip = Trip.find(params[:trip_id])
    @experiences = Experience.where("location ILIKE ?", "%" + @trip.city + "%")
  end

  def my_experience
    @trip = Trip.find(params[:trip_id])
    @experience = Experience.find(params[:id])
    # @trip_experience = TripExperience.new
  end

end
