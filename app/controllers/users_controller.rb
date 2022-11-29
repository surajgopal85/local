class UsersController < ApplicationController
  def update
    if current_user.update(user_params)
      redirect_to profile_path
    else
      render "profiles/edit", status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, preferences_attributes: [:id, :tag_id, :_destroy])
  end
end
