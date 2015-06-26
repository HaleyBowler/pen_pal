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
end
