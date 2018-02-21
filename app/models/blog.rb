class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1}
  extend FriendlyId
  friendly_id :title, use: :slugged
  # What this does is that it swaps in the title in for whats in place now.

  validates_presence_of :title, :body
  belongs_to :topic
end
