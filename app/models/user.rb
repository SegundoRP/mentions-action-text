class User < ApplicationRecord
  has_person_name

  has_many :notifications, foreign_key: :recipient_id
  has_many :services
end
