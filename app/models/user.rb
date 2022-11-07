class User < ApplicationRecord
  include ActionText::Attachable

  has_person_name

  has_many :notifications, foreign_key: :recipient_id
  has_many :services
end
