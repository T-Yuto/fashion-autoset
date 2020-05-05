class ImagesController < ApplicationController

    def index
        @images = Image.where(user_id: current_user.id).includes(:user)
        @upper_image = @images.select("id", "upper_image", "user_id")
        @down_image = @images.select("id", "down_image", "user_id")
        @related_upper_image = @upper_image.where('id>=?', rand(@upper_image.first.id..@upper_image.last.id)).where.not(upper_image: nil).first
        @related_down_image = @down_image.where('id>=?', rand(@down_image.first.id..@down_image.last.id)).where.not(down_image: nil).first
    end
    def new
        @image = Image.new
    end
    def create
        @image = Image.create(image_params)
        redirect_to new_image_path
    end
    def show
    end
    private
    def image_params
    params.require(:image).permit(:upper_image, :down_image).merge(user_id: current_user.id)
    end
end
