class HomeController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = get_users
	end

	def get_users 
		users = []
		languages = current_user.get_languages
		User.all.shuffle.each do |user|
			languages.each do |language|
				if user.get_languages.join(',').include?(language) 
					users << user
					break
				end
			end
			break if users.size == 3
		end
		users
	end
end
