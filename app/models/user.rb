class User < ApplicationRecord
  has_many :posts

  validates :user_name, 
    presence: true, 
    length: { maximum: 12 },
    format: { with: /[A-Za-z]/, message: "only allows letters" }
end
