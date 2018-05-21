class Wine < ApplicationRecord
	belongs_to :user
	validates :image, file_size: { less_than: 10.megabytes }
	mount_uploader :image, WineImageUploader
end
