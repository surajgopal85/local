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
    @tags = Tag.all
    # @preferences = Preference.where(user_id: current_user.id)
    @preference = Preference.new
  end

  def update

  end

  def destroy

  end
end
