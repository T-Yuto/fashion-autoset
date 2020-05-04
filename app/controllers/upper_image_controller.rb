class UpperImageController < ApplicationController
  def index
    @upper_images = UpperImage.includes(:user)
  end
  def upper_images
    return @upper_images
  end
  def upper_image
    return @upper_image
  end
  def new
    @upper_image = UpperImage.new(image_params)  
  end
  def create
  end
  def show
  end
  private
  def image_params
    params.permit(:image).merge(user_id: current_user.id)
  end
end