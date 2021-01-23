class User < ApplicationRecord
  validates :user_name, 
    presence: true, 
    length: { maximum: 12 },
    format: { add: /[A-Za-z]/, message: "only allows letters" }
end
