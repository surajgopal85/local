class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    # puts @experiences.class
    @markers = @experiences.geocoded.map do |experience|
      {
        lat: experience.latitude,
        lng: experience.longitude
      }
    end
    # puts @markers.class
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
    @message = Message.new
    @review = Review.new
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def destroy
    @experience = Experience.find(params[:id])
    if @experience.destroy
      redirect_to local_experiences_path
    else
      render :local_experiences, status: :unprocessable_entity
    end
  end

  def update
    @experience = Experience.find(params[:id])
    if @experience.update(experience_params)
      redirect_to local_experiences_path
    else
      render :show, status: :unprocessable_entity
    end
  end

  def my_experiences
    @trip = Trip.find(params[:trip_id])
    @user_tags = current_user.tags

    @experiences = Experience.where("location ILIKE ?", "%#{@trip.city}%")

    @selected_experiences = []
    @experiences.select do |experience|
      match = 0
      experience.tags.each do |tag|
        match += 1 if @user_tags.include?(tag)
      end
      @selected_experiences.push([experience, match]) if match.positive?
    end
    @selected_experiences.uniq!{ |exp| exp[0].id}
    @selected_experiences = @selected_experiences.sort_by { |x| x[1] }.reverse.map(&:first)
    # puts @selected_experiences.class

    @markers = []
    @selected_experiences.each do |experience|
      marker = {
        lat: experience.latitude,
        lng: experience.longitude
      }
      @markers << marker
    end
  end

  def my_experience
    @trip = Trip.find(params[:trip_id])
    @experience = Experience.find(params[:id])
    @message = Message.new
    @review = Review.new
  end

  def local_experiences
    @user = current_user
    @experiences = Experience.where(local_id: current_user.id)
  end

  private

  def experience_params
    params.require(:experience).permit(:name, :location, :description, :image_url, :address, experience_tags_attributes: [:id, :tag_id, :_destroy])
  end
end
