class ReviewsController < ApplicationController
  def index
    @destinations = Destination.find(params[:destination_id])
    @reviews = @destinations.reviews
    json_response(@reviews)
  end

  def show
    @destination = Destination.find(params[:destination_id])
    @review = @destination.reviews.find(params[:id])
    json_response(@review)
  end

  def create
    @destination = Destination.create(destination_params)
    json_response(@destination)
  end

  def update
    @destination = Destination.find(params[:id])
    @destination.update(destination_params)
  end

  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def review_params
    params.permit(:rating, :content, :user_id, :destination_id)
  end
end
