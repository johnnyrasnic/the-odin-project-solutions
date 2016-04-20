class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  validates :username, presence: true, length: { minimum: 6, maximum: 20 }, uniqueness: true
  validates :email, presence: true, length: { minimum: 5 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
end
