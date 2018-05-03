class Event < ApplicationRecord
	belongs_to :user
	has_many :event_invites, dependent: :destroy
	accepts_nested_attributes_for :event_invites, allow_destroy: true
end



# class Physician < ApplicationRecord
#   has_many :appointments
#   has_many :patients, through: :appointments
# end
 
# class Appointment < ApplicationRecord
#   belongs_to :physician
#   belongs_to :patient
# end
 
# class Patient < ApplicationRecord
#   has_many :appointments
#   has_many :physicians, through: :appointments
# end

