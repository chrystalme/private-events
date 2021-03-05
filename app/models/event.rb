class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :event_attendances, foreign_key: 'attended_events'
  has_many :attendees, through: :event_attendances

  scope :upcoming_events, -> { where( 'date > ?', Time.now )}
  scope :past_events, -> { where( 'date < ?', Time.now )}

  
end
