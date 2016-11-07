class Event < ApplicationRecord
	has_one :location

	has_many :attendees

	belongs_to :category
end
