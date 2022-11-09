class Post < ApplicationRecord
  has_rich_text :body

  def send_notifications
    users = user_mentions
  end

  def user_mentions
    @users ||= body.body.attachments.select { |a| a.attachable.class == User }.map(&:attachable).uniq
  end
end
