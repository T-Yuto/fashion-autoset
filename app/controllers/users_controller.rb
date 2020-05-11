class UsersController < ApplicationController
  def show
    search_user_images
    user = User.find(params[:id])
  end

  private

  def image_params
    params.require(:image).permit(:upper_image, :down_image).merge(user_id: current_user.id)
  end

  def search_user_images
    @images = Image.where(user_id: current_user.id).includes(:user)
    @upper_images = @images.select("id", "upper_image", "user_id").where.not(upper_image: nil)
    @down_images = @images.select("id", "down_image", "user_id").where.not(down_image: nil)
  end
end
