class ReviewsController < ApplicationController

  def show
    @review = review.find(params[:id])
  end

  def new
    @review = review.new

  end

  def create
    @review = review.new(review_params)
    @review.save
    redirect_to review_path(@review)
  end


private

def review_params
  params.require(:review).permit(:content, :rating)
end

end
