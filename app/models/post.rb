class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, 
    presence: true, 
    format: { with: /[A-Za-z ]/, message: "only allows letters" }

  validates :body, 
    presence: true, 
    length: { minimum: 12 }
end
