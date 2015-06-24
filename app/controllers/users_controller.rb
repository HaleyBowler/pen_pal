class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = User.filter(params[:q]).paginate(page: params[:page], per_page: 4)

		render :partial => 'users' if request.xhr?
	end
end
