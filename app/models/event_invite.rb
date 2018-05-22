class EventInvite < ApplicationRecord
	belongs_to :user
	belongs_to :event
	has_one :wine
end
