class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :user_name, 
    presence: true, 
    length: { maximum: 12 },
    format: { with: /[A-Za-z]/, message: "only allows letters" }
end
