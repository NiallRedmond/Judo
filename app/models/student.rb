class Student < ActiveRecord::Base

	belongs_to :judo_class

	has_many :matches
	has_many :comments
	
	validates :student_name, presence: true
	validates_uniqueness_of :email
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
	validates :dob, presence: true
	
	has_secure_password
	
end
