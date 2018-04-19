class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :wines
  has_many :events
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

# https://www.youtube.com/watch?v=V8q2sYC1QtI
