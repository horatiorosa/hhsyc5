class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  has_many :announcements
	validates_presence_of :email, :password
	validates :password, confirmation: true
	validates_uniqueness_of :email, case_senstive: false
	# enum status: [:admin, :junior_admin, :blogger]
	# before_validation :default_role
	# def default_role
	# 	self.status ||= 2
	# end
end
