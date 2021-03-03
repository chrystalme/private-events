class Event < ApplicationRecord
  belongs_to :creator, foreign_key: 'creator_id', class_name: 'User'
  # belongs_to :user, foreign_key: "user_id" class_name: "User"
end
