class ApplicationController < ActionController::Base
	#before_action :authenticate_user!

	
	rescue_from CanCan::AccessDenied do |exception|
  		redirect_to root_path, :alert => exception.message
	end

  	protect_from_forgery with: :exception

  	before_action :set_locale

	def set_locale
	  I18n.locale = params[:locale] || I18n.default_locale
	end
end
