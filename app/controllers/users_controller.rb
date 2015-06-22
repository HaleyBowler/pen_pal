class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = User.order("RANDOM()").limit(3)
	end
end
