class User < ApplicationRecord
	validates :email, presence: true, uniqueness: true
	validates :name, presence: true 

	has_many :events, foreign_key: 'creator_id'

end
