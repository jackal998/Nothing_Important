class Event < ApplicationRecord
	has_many :event_groupships
	has_many :groups, :through => :event_groupships


	has_one :location

	has_many :attendees

	belongs_to :category
end
