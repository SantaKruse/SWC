class EventInvite < ApplicationRecord
	belongs_to :user
	belongs_to :event
	belongs_to :wine
end
