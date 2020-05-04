class DownImageController < ApplicationController
  def index
    @down_images = DownImage.includes(:user)
  end
  def down_images
    return @down_images
  end
  def down_image
    return @down_image
  end
  def new
    @down_image = DownImage.new(image_params) 
  end
  def create
  end
  def show
  end
  private
  def image_params
    params.permit(:image).merge(user_id: current_id)
  end
end