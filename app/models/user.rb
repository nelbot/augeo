class User < ActiveRecord::Base
  validates :email, presence: true 
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  def new_user(user)
    if User.find_by(:email, user) != nil
      flash[:notice] = "Thanks for coming back, dummy"
    else
      flash[:notice] = "You're New, Scrub"
    end
  end

end

# if email exists, flash message, logged in
# else email doesn't exist, "thanks for coming to sell your shit"