class ApplicationController < ActionController::Base

	rescue_from ActiveRecord::RecordNotFound do
		flash[:warning] = 'Resource not found.'
		redirect_back_or root_path
	end

	def after_sign_out_path_for(users)
		root_path
	end

	def after_sign_in_path_for(users)
	  home_index_path
	end

	def redirect_back_or(path)
		redirect_to request.referer || path
	end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
