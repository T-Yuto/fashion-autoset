class UpperImageController < ApplicationController
  def index
    @upper_images = Upper_image.includes(:user)
  end
  def new
    @upper_image = Upper_image.new(mage_params)    
  end
  def show
  end
  private
  def image_params
    params.require(:down_image).permit(:image).merge(user_id: current_id)
  end
end