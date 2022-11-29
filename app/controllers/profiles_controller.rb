class ProfilesController < ApplicationController
  def survey
    @tags = Tag.all

    @preference = Preference.new
  end

  def create

  end

  def show
    @user = current_user
    @trips = Trip.all.where(user_id: current_user.id)
    @trip = Trip.new
  end

  def edit
    # current_user.preferences.build unless current_user.preferences.any?
  end

  def update
    raise
  end

  def destroy

  end
end
