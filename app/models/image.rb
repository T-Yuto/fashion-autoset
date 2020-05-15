class Image < ApplicationRecord
    belongs_to :user
    mount_uploader :upper_image, ImageUploader
    mount_uploader  :down_image, ImageUploader

    skip_callback :commit, :after, :remove_previously_stored_upper_image, only: :edit
    skip_callback :commit, :after, :remove_previously_stored_down_image, only: :edit
end
