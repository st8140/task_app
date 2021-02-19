class Post < ApplicationRecord
  validates :post_title, presence: true, length: { maximum:20 }
  validates :start_at, presence: true
  validates :end_at, presence: true
end
