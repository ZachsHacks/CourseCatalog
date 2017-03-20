class Subject < ApplicationRecord
	has_many :listings
	has_many :courses, through: :listings
end
