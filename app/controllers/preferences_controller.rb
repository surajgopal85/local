class PreferencesController < ApplicationController
  def create
    # find all preferences checked off
    # if save, redirect to profile_path
    # else, render :survey

    # does this need to happen for each preference? Can they be passed in an array?
    tags = params["preference"]["tag_id"].size - 1
    puts tags
    1.upto(tags) do |i|
      @preference = Preference.new(tag_id: params["preference"]["tag_id"][i], user_id: current_user.id)
      render :survey, status: 422 and return unless @preference.save
    end

    redirect_to profile_path
  end
end
