class Resource < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  scope :recent , -> { order('updated_at DESC') }
  belongs_to :user
end
