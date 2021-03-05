class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :event_attendances
  has_many :attendees, through: :event_attendances
end
