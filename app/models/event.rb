class Event < ApplicationRecord
<<<<<<< HEAD
  belongs_to :creator, foreign_key: 'creator_id', class_name: 'User'
  # belongs_to :user, foreign_key: "user_id" class_name: "User"
=======
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :event_attendances, foreign_key: 'attended_events'
  has_many :attendees, through: :event_attendances

  scope :upcoming_events, -> { where( 'date > ?', Time.now )}
  scope :past_events, -> { where( 'date < ?', Time.now )}

  
>>>>>>> dd4ec7d55667483125df01c863d8106849ec84e5
end
