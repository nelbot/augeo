class UsersController < ApplicationController
  def new
    @user = User.new
    render 'login'
  end

  def create
    @user = User.find_by(email: users_privates[:email])

    if @user != nil
      flash[:notice] = "Thanks for coming back, dummy"
    else
      flash[:notice] = "You're New, Scrub"
      @user = User.create users_privates
    end

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
