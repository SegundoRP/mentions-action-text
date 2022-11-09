class Post < ApplicationRecord
  has_rich_text :body

  def send_notifications
    users = user_mentions
    users.each do |user|
      PostMailer.user_mention(self, user).deliver_now
    end
  end

  def user_mentions
    @users ||= body.body.attachments.select { |a| a.attachable.class == User }.map(&:attachable).uniq
  end
end
