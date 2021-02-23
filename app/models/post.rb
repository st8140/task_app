class Post < ApplicationRecord
  validates :post_title, presence: true, length: { maximum:20 }
  validates :start_at, presence: true
  validates :end_at, presence: true
  validate :start_end_check
  
  
  def start_end_check
    errors.add(:end_at, "は今日以降の日付で選択してください" )if
      end_at.nil? || end_at < Date.today
  end
      
end
