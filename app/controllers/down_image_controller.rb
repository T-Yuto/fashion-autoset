class DownImageController < ApplicationController
  def index
    @down_images = Down_image.includes(:user)
  end
  def new
    @down_image = Down_image.new(mage_params)    
  end
  def show
  end
  private
  def image_params
    params.require(:down_image).permit(:image).merge(user_id: current_id)
  end
end