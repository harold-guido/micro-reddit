class Post < ApplicationRecord
  belongs_to :user

  validates :title, 
    presence: true, 
    format: { with: /[A-Za-z ]/, message: "only allows letters" }

  validates :body, 
    presence: true, 
    length: { minimum: 12 }
end
