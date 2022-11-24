class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
  end

  def new
    @experience = Experience.new
    @tags = Tag.all
    @experience.experience_tags.build unless @experience.experience_tags.any?
  end

  def create
    @tags = Tag.all
    @experience = Experience.new(experience_params)
    @experience.local = current_user

    if @experience.save
      redirect_to local_experiences_path
    else
      render :new, status: :unprocessable_entity
    end
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

  def local_experiences
    @user = current_user
    @experiences = Experience.where(local_id: current_user.id)
  end

  private

  def experience_params
    params.require(:experience).permit(:name, :location, :description, :image_url, experience_tags_attributes: [:id, :tag_id, :_destroy])
  end
end
