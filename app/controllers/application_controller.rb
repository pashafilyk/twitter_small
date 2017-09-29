class ApplicationController < ActionController::Base
	before_action :authenticate_user!

  	
#  	def configure_permitted_parameters
 # 		devise_parameter_sanitize.permit(:sign_in) do |user_params|
  #		user_params.permit(:username, :email)	
  #		end
  #		
  #	end

#        protected
#
 #   def configure_permitted_parameters
##       devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :password])
#
 #       devise_parameter_sanitizer.permit(:sign_up, 
  #  		keys: [:name, :email, :password, :password_confirmation])

   # end
end
