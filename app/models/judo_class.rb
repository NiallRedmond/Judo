class JudoClass < ActiveRecord::Base

	has_many :commments, dependent: :destroy
	has_many :students
	
	validates :belt_level, presence: true
	validates :day, presence: true
	validates :time, presence: true
end
