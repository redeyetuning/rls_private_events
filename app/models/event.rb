class Event < ApplicationRecord
	belongs_to :creator, class_name: 'User'
	has_many :attendances
	has_many :attendees, through: :attendances, source: :user

	def self.future
		where("date > ?", Time.now)
	end

	def self.past
		where("date <= ?", Time.now)
	end
end
