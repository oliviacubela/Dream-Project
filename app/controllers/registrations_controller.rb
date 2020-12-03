class RegistrationsContoller < Devise::RegistrationsContoller 
  #this method overwrites the sign_up and account_update params shipped with devise to accept the name attribute that we added to the migration user table 

  private 

  def sign_up_params 
    params.require(:user).permit( :name,
                                  :email,
                                  :password,
                                  :password_confirmation)
  end

  def account_update_params 
    params.require(:user).permit( :name,
                                  :email,
                                  :password,
                                  :password_confirmation,
                                  :current_password)
  end
end