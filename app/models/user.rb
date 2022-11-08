class User < ApplicationRecord
  include ActionText::Attachable

  has_person_name

  has_many :notifications, foreign_key: :recipient_id
  has_many :services

  def to_trix_content_attachment_partial_path
    to_partial_path
  end
end
