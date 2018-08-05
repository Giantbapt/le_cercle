class Tournament < ApplicationRecord
	has_many :games
	has_many :participations
end
