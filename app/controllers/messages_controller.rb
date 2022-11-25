class MessagesController < ApplicationController
  def create
    @experience = Experience.find(params[:experience_id])
    @message = Message.new(message_params)
    @message.experience = @experience
    @message.user = current_user
    if @message.save
      ExperienceChannel.broadcast_to(
        @experience,
        render_to_string(partial: "message", locals: {message: @message})
      )
      head :ok
    else
      render "experiences/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
