class UsersController < ApplicationController
  #get
  def new

  end

  #post
  def create
    @user = User.new(user_params)
    if (isAlready_User == true)
      flash[:error] = "Email already registered"
      redirect_to '/signup' and return
    end
    @user.save!
    puts (@user)
    session[:user] = @user
    redirect_to '/dashboard' and return
  end

  def user_params
    params.require(:session).permit(:email, :password, :country, :name)
  end

  def isAlready_User
    if (User.all.find_by_email(@user.email))
      return true
    end
    return false
  end
  def edit
  end

  def delete
  end

  def list
  end

end
