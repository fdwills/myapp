class User < ActiveRecord::Base
  has_secure_password

  has_many :posts
  has_many :comments
  has_many :resources

  validates :name,
            format: /\A[\w-]+\z/,
            length: { maximum: 64 },
            uniqueness: true

  validates :email,
            uniqueness: true,
            length: { maximum: 64 },
            format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  validates :likes,
            length: { maximum: 255}

  validates :pref,
            length: { maximum: 255}

  validates :homepage,
            length: { maximum: 255}
end
