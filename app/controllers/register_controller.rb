class RegisterController < ApplicationController
  def fill

    # Check that user name is not taken
    # @check_user_name = User.find_by user_name: params[:user_name]

    # params[:user_name]

    # attempt to match params[:username] to any value inside the instance var
    # if !params[:user_name].nil?
    #   # flash[:notice] = "User name already exists. Select a different user name."
    #   flash[:notice] = "Params has a value."
    # else
    #   flash[:notice] = "Welcome Enter Credentials"

      # @user = User.new
  #
      # if !@user.first_name.nil?
  #     #   redirect_to 'login/enter'
  #     # end
  #
  #     @user.first_name = params[:first_name].strip
  #     # session[:first_name] = @user.first_name
  #     # @first_name = session[:first_name].strip
  #
  #     @user.last_name = params[:last_name].strip
  #
  #     @user.user_name = params[:user_name].strip
  #     session[:user_name] = @user.user_name
  #     # @user_name = session[:user_name].strip
  #
  #     @user.password = params[:password].strip
  #     # session[:password] = @user.password
  #     # @password = session[:password].strip
  #
  #     @user.street = params[:street].strip
  #
  #     @user.state = params[:state].strip
  #
  #     @user.postal_code = params[:postal_code].strip
  #
  #     @user.country = params[:country].strip
  #
  #     @user.email = params[:email].strip
  #
  #     @user.save
  #
  #
  #     # @phone1 = Phone.new
  #
  #     # @phone1.number = params[:phone1].strip
  #     # Calls the method phones, which an association made earlier from users to phones, and assigns to the end of that grouping or table, the recently created phone. This will also assign the user's column 'id' to the phones' 'user_id' column.
  #
  #
  #     save_phone(:phone1)
  #     save_phone(:phone2)
  #     save_phone(:phone3)
  #
  #
  #     redirect_to 'confirmation/success'
  #   end
  #
  #   # If user name is not taken, redirect to success page
  # end
  #
  # # @phone1.save
  # def save_phone(new_phone)
  #   if !params[new_phone].strip.empty?
  #     phone = Phone.new
  #     phone.number = params[new_phone].strip
  #     @user.phones << phone
  #     phone.save
  #   end
    # end
  end
end
