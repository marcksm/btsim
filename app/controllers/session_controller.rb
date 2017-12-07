class SessionController < ApplicationController
  def new
  end

  def logout
  end
  #post
  def create
    puts(params[:session])
    @user = User.find_by(user_params)
    if (@user == nil)
      flash.keep[:notice] = "User not found"
      redirect_to '/login' and return
    end
    session[:user] = @user
    redirect_to '/dashboard'
  end
  def user_params
    params.require(:session).permit(:email, :password)
  end
end
