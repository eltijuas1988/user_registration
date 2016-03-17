class AccountController < ApplicationController
  include AccountHelper

  def register

    if params[:user_name].nil?
      flash[:notice] = "Welcome, Please register below:"

    else
      user_name = User.find_by_user_name(params[:user_name])

      if user_name.nil?
        @user = User.new

        # if !@user.first_name.nil?
        #   redirect_to 'login/enter'
        # end

        @user.first_name = params[:first_name].strip
        # @first_name = session[:first_name].strip

        @user.last_name = params[:last_name].strip

        @user.user_name = params[:user_name].strip
        # session[:user_name] = @user.user_name
        # @user_name = session[:user_name].strip

        @user.password = params[:password].strip
        # session[:password] = @user.password
        # @password = session[:password].strip

        @user.street = params[:street].strip

        @user.state = params[:state].strip

        @user.postal_code = params[:postal_code].strip

        @user.country = params[:country].strip

        @user.email = params[:email].strip

        @user.save


        # @phone1.number = params[:phone1].strip
        # Calls the method phones, which an association made earlier from users to phones, and assigns to the end of that grouping or table, the recently created phone. This will also assign the user's column 'id' to the phones' 'user_id' column.

        save_phone(:phone1)
        save_phone(:phone2)
        save_phone(:phone3)

        session[:id] = @user.id
        redirect_to '/account/confirm'
      else
        flash[:notice] = "User Name is already in use. Please enter another one."
      end
    end


  end

  def confirm
    @user = User.find_by id: session[:id]
  end

  def enter
    if params[:user_name].nil? && params[:password].nil?
      flash[:notice1] = "Welcome"
      flash[:notice2] = "Please enter credentials below"
    else
      find_user = User.find_by_user_name(params[:user_name])

      if find_user.nil?
        flash[:notice1] = "Error:"
        flash[:notice2] = "User name does not exist."
      else
        if find_user.password == params[:password].strip
          session[:user_name] = User.find_by user_name: params[:user_name]
          session[:id] = find_user.id
          redirect_to '/account/show'
        else
          flash[:notice1] = "Error:"
          flash[:notice2] = "Password is incorrect."
        end
      end
    end
  end

  def show
    # if params[:user_name].nil?
    #   redirect_to '/account/enter'
    # else
      @user = User.find(session[:id])
    # end
  end

  def logout
    reset_session
    redirect_to '/'

    #the reset_session method does not seem to be accessed
  end
end
