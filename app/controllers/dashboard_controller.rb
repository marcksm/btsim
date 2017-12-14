class DashboardController < ApplicationController
  def index
    tmp = session[:user]
    @user = User.find_by_id(tmp["id"])
    getmoney
  end
  def getmoney
    @user.money = 2000
    return 0
  end
end
