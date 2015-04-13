class UsersController < ApplicationController
  def new
    @user = User.new
    render 'login'
  end

  def create
    @user = User.create users_privates
    session[:email] = @user.email

    redirect_to '/users/home'
  end

  def index
    # @user = User.new_user(@user)
  end

  private

  def users_privates
    params.require(:user).permit(:email)
  end
end
