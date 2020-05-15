class ImagesController < ApplicationController
  def index
    if user_signed_in?
      search_user_images
    end
  end

  def new
    @image = Image.new
  end

  def create
    image_present
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    image = Image.find(params[:id])
    if params[:image].present?
      image.update(image_params)
      redirect_to user_path(current_user.id)
    else
      destroy
    end
  end

  def destroy
    image = Image.find(params[:id])
    image.delete
    redirect_to user_path(current_user.id)
  end

  private

  def image_params
    params.require(:image).permit(:upper_image, :down_image).merge(user_id: current_user.id)
  end

  def move_to_new
    redirect_to new_image_path
  end

  def search_user_images
    @images = Image.where(user_id: current_user.id).includes(:user)
    if @images.present?
      @upper_images = @images.select("id", "upper_image", "user_id").where.not(upper_image: nil)
      @down_images = @images.select("id", "down_image", "user_id").where.not(down_image: nil)
      if @upper_images.present? && @down_images.present?
        @related_upper_image = @upper_images.where("id>=?", rand(@upper_images.first.id..@upper_images.last.id)).first
        @related_down_image = @down_images.where("id>=?", rand(@down_images.first.id..@down_images.last.id)).first
      end
    end
    move_to_new
  end

  def image_present
    if params[:image].present?
      if image_params[:upper_image].present? or image_params[:down_image].present?
        Image.create(image_params)
      end
    end
    move_to_new
  end
end
