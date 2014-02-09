class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  scope :recent , -> { order('updated_at DESC') }
end
