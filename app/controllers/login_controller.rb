class LoginController < ApplicationController
  def enter

    # call method verify at beggining to assess what the flash message will be
    # if user_name && password matches user_name && password in DB then you get access to your accountint
    flash[:notice1] = "Welcome"
    flash[:notice2] = "Please enter credentials below"
    # if !params[:user_name].nil?
    @user = User.find_by user_name: params[:user_name]
    if !@user.nil?
      verify
    end

  end

  def verify
    # Flash will change to 'User name or password are invalid' if credentials dont match database
    #if either field is invalid then render enter.html.rb
    # user = User.find_by user_name: params[:user_name]

    # if user.nil?
    #   flash[:notice1] = "Login Error:"
    #   flash[:notice2] = "User name not found"
    #   # info = User.find_by user_name: 'kj'
    # else
      # if user.password != params[:password]
    if @user.password != params[:password]
      flash[:notice1] = "Login Error:"
      flash[:notice2] = "User Name or Password not found:"
    else
      session[:user] = @user.id
      redirect_to '/user_info/show'
    end
  end
end
