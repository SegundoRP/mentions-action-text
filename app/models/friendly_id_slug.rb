class FriendlyIdSlug < ApplicationRecord
  belongs_to :sluggable, polymorphic: true
end
