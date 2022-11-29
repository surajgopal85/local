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

  end

  def update

  end

  def destroy

  end
end
