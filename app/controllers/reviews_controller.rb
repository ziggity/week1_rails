class ReviewsController < ApplicationController
  before_action :find_product

  def new
    @review = @product.reviews.new
  end

  def create
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to @product, notice: "Your Review was successfully added to the database!"
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to @product, notice: "Your Review was successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to @product, notice: "Your Review was successfully deleted from database"
  end

  private
    def review_params
      params.require(:review).permit(:author, :rating, :content)
    end

    def find_product
      @product = Product.find(params[:product_id])
    end

end
