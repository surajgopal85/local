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

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    if @review.update(review_params)
      redirect_to experience_path(@review.experience)
    else
      render '/experiences/show', status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
