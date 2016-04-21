class User < ActiveRecord::Base
  validates :username, presence: true, length: { minimum: 6, maximum: 20 }, uniqueness: true
  validates :email, presence: true, length: { minimum: 6, maximum: 20 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6, maximum: 20 }
end
