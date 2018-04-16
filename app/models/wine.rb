class Wine < ApplicationRecord
	belongs_to :user
	mount_uploader :image, WineImageUploader
end
