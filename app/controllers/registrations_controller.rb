class RegistrationsController < Devise::RegistrationsController
	respond_to :html, :json 
  def registration
    @first_name = params[:first_name]
    @email = params[:email]
    UserMailer.registration(@first_name, @email).deliver
end

  

	private

	def sign_up_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
	end

	def account_update_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
	end
end