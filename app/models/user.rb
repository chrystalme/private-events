class User < ApplicationRecord
  has_many :created_events, class_name: 'Event', foreign_key: 'creator_id'
end
