# coding: utf-8
class UsersController < ApplicationController
	def edit
		@user = current_user
		redirect_to root_path	if not logged_in?
	end
	def show
		@user = current_user
    
	end
	def update
		current_user.update_attributes(params[:user])
		redirect_to current_user
	end
	def index
		@users = User.all
	end
end
