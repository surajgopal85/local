class ProfilesController < ApplicationController
  def survey
    @tags = Tag.all

    @preference = Preference.new
  end

  def create

  end

  def show
    @user = current_user
    @trip = Trip.new
  end

  def edit
    @user = current_user
  end

  def update

  end

  def destroy

  end
end
