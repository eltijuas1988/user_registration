class UserInfoController < ApplicationController
  def show
    # @user_name = User.find(session[:user])
    @user = User.find_by_id(session[:user])
  end
end
