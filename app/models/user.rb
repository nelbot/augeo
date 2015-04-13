class User < ActiveRecord::Base
  validates :email, presence: true 
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }


end

# if email exists, flash message, logged in
# else email doesn't exist, "thanks for coming to sell your shit"