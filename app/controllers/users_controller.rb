class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = User.filter(params[:q]).paginate(page: params[:page], per_page: 9)
		render :partial => 'users' if request.xhr?
	end

	def edit
		@user = current_user
	end
	def update
		@user = current_user
		@user.update_attributes(params["user"].permit(:english, :spanish, :italian, :german, :french))

		redirect_to home_index_path
	end

	def get_users 
		users = []
		languages = current_user.get_languages
		User.all.each do |user|
			languages.each do |language|
			  users << user if user.get_languages.join(',').include?(language)
			end
		end
		users
	end
end
