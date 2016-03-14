module AccountHelper
  def save_phone(new_phone)
    if !params[new_phone].strip.empty?
      phone = Phone.new
      phone.number = params[new_phone].strip
      @user.phones << phone
      phone.save
    end
  end
end
