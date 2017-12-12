class UsersController < ApplicationController
  #get
  def new

  end

  #post
  def create
    @user = User.new(user_params)
    @user.save!
    puts (@user)
    session[:user] = @user
    redirect_to '/dashboard' and return
  end

  def user_params
    params.require(:session).permit(:email, :password, :country, :name)
  end

  def edit
  end

  def delete
  end

  def list
  end
end
