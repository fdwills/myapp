class Resource < ActiveRecord::Base
  include PrevNext
  # 0 for release, 1 for draft
  ST_RELEASED = 0
  ST_DRAFT    = 1


  mount_uploader :avatar, AvatarUploader
  scope :recent , -> { order('created_at DESC') }
  scope :released, -> { where(state: ST_RELEASED) }

  belongs_to :user
  validates :title, length: { maximum: 255 }
  validates_inclusion_of :state, :in => [ST_RELEASED, ST_DRAFT]
end
