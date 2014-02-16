class Post < ActiveRecord::Base
  include PrevNext
  belongs_to :user
  has_many :post_resources, dependent: :destroy
  has_many :resources, through: :post_resources
  has_many :comments

  # 0 for release, 1 for draft
  ST_RELEASED = 0
  ST_DRAFT    = 1

  scope :recent , -> { order('created_at DESC') }
  scope :released, -> { where(state: ST_RELEASED) }

  validates :title, length: { maximum: 255 }, presence: true
  validates_inclusion_of :state, :in => [ST_RELEASED, ST_DRAFT]

  def released?
    return self.state == ST_RELEASED
  end
end
