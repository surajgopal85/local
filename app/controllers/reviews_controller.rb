class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @experience = Experience.find(params[:experience_id])
    @review.experience = @experience
    @review.user = current_user

    if @review.save
      redirect_to experience_path(@experience)
    else
      render '/experiences/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
