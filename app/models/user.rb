class User < ActiveRecord::Base
  has_secure_password

  has_many :posts
  has_many :comments
  has_many :resources

  validates :name, format: /\A[\w-]+\z/, length: { maximum: 64 }, uniqueness: true
  validates :email, uniqueness: true
end
