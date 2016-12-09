class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    review = Review.new(review_params)
      review.vote_count = 0
      review.user_id = session[:user_id]
    if review.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def edit
    @review = Review.find(params[:id])
  end
  def update
    review = Review.find(params[:id])
    if review.update_attributes(user_params)
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_back(fallback_location: root_path)
  end

  private
  def review_params
    params.require(:review).permit(:title, :body, :rating, :movie_id)
  end


end
