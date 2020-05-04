 class UsersController < ApplicationController
    def index

    end
    def new
        @down_image = DownImage.new
        @upper_image = UpperImage.new
    end
    def create
    end
    def edit
    end 
end