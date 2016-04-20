class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { minimum: 1, maximum: 200 }
  validates :body, presence: true, length: { minimum: 1 }, uniqueness: true
end
