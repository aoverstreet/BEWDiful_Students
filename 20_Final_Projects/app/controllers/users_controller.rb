class UsersController < ApplicationController
	before_action :load_users, only: [:show, :edit, :update]


	def show
		@user = User.find params[:id]
		@entries = @user.entries 
	end
	
	def edit
		@user = User.find params[:id]
	end
	
	def update
		load_users
		@user.update user_params
		
		#try and save
		if @user.save
			redirect_to @user
		else
			render :edit
		end
	end
	
	
	private
	
	def load_users
		@user = User.find params[:id]
	end
	
		#require that they have an entry and get these attributes
	def user_params
		params.require('user').permit(:name, :category, :street1, :street2, :city, :state, :zipcode, :phone)
	end
	

end
