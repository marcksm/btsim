class DashboardController < ApplicationController
  def index
    tmp = session[:user]
    @user = User.find_by_id(tmp["id"])
  end
end
