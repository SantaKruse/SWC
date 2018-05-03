class Wine < ApplicationRecord
	mount_uploader :image, WineImageUploader
	belongs_to :user
	belongs_to :event_invite
end
