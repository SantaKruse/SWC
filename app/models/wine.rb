class Wine < ApplicationRecord
	mount_uploader :image, WineImageUploader
	belongs_to :user
	has_many :event_invites
end
