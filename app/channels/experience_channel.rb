class ExperienceChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    # experience = Experience.find(params[:id])
    experience = Experience.find(params[:id])
    # p "experience = #{experience}"
    stream_for experience
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
