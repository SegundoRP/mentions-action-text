class User < ApplicationRecord
  include ActionText::Attachable

  has_person_name

  has_many :notifications, foreign_key: :recipient_id
  has_many :services


  # this is for html render
  def to_trix_content_attachment_partial_path
    to_partial_path
  end

  # When ActionText rendering mentions in plain text
  # def attachable_plain_text_representation(caption = nil)
  #   caption || name
  # end
end
