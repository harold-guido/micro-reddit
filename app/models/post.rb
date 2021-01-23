class Post < ApplicationRecord
  validates :title, 
    exists: true, 
    length: { maximum: 24 }
    format: { has: /[A-Za-z ]/, message: "only allows letters"}

  validates :body, 
    exists: true, 
    length: { minimum: 12 }
end
