class ImagesController < ApplicationController
  # before_action move_to_index, expect: [:index, ]
  def index
    if user_signed_in?
      @images = Image.where(user_id: current_user.id).includes(:user)
      @upper_images = @images.select("id", "upper_image", "user_id").where.not(upper_image: nil)
      @down_images = @images.select("id", "down_image", "user_id").where.not(down_image: nil)
      @related_upper_image = @upper_images.where("id>=?", rand(@upper_images.first.id..@upper_images.last.id)).first
      @related_down_image = @down_images.where("id>=?", rand(@down_images.first.id..@down_images.last.id)).first
    end
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.create(image_params)
    redirect_to new_image_path
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    image = Image.find(params[:id])
    tweet.update(tweet_params)
  end

  private

  def image_params
    params.require(:image).permit(:upper_image, :down_image).merge(user_id: current_user.id)
  end
end
