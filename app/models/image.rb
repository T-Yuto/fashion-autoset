class Image < ApplicationRecord
    belongs_to :user
    mount_uploader :upper_image, ImageUploader
    mount_uploader  :down_image, ImageUploader
end
