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
      puts ("ETNTROUUUUUUUUUUUUUU")
      flash.keep[:notice] = "User not found"
      redirect_to '/login' and return
    end
    redirect_to '/login' and return
  end
  def user_params
    params.require(:session).permit(:email, :password)
  end
end
