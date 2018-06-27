class User < ApplicationRecord
	validates :email, presence: true, uniqueness: true
	validates :name, presence: true 

	has_many :events, foreign_key: 'creator_id'
	has_many :attendances
	has_many :attended_events, through: :attendances, source: :event

end
