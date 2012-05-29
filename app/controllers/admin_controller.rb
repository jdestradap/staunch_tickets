class AdminController < ApplicationController
	before_filter :authenticate_user!
	before_filter :authenticate_admin
	layout 'admin'

	def index
	end

	private 

	def authenticate_admin
		unless current_user.admin?
			redirect_to root_path, notice: "You must be admin to go here"
		end
	end

end