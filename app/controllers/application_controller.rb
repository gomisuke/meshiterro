class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!
	protected
	def configure_premitted_parametes
		devise_parameter_sanitize.permit(:sign_up,keys: [:name])
	end
	
end
