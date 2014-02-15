class Inforamtion < ActiveRecord::Base
  scope :recent , -> { order('created_at DESC') }

  validates :title, presence: true
  validates :content, presence: true
end
