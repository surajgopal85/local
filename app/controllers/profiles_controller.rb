class ProfilesController < ApplicationController
  def survey
    @tags = Tag.all

    @preference = Preference.new
  end

  def create

  end

  def show
    @user = current_user

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
