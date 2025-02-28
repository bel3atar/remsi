class ApplicationController < ActionController::Base
  protect_from_forgery
  
	def current_user
		current_user ||= User.find_by_uid(session[:user_id]) if session[:user_id]
	end
	def logged_in?
		current_user != nil
	end
  helper_method :current_user, :logged_in?
end
