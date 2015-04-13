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

    session[:id] = @user.id

    redirect_to "/users/#{@user.id}/items/new"
  end


  private

  def users_privates
    params.require(:user).permit(:email)
  end
end
