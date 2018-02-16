class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  # What this does is that it swaps in the title in for whats in place now.
end
