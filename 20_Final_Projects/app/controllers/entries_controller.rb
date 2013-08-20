class EntriesController < ApplicationController
	before_filter :authenticate_user!
	before_action :load_entry, only: [:show, :edit, :update,  :destroy]
	

	def index
		#@entries = Entry.all
		@entries = current_user.entries
	end
	
	
	def new
		@entry = Entry.new
	end
	
	
	def create
		#params["entry"][:pickup_date] 

		@entry = Entry.new(entry_params)
		
		@entry.pickup_date = Date.strptime(params["entry"]["pickup_date"],"%m/%d/%Y")
		
		@entry.user_id = current_user.id
		@entry.images = params["entry"]["images"]
		
		#try and save
		if @entry.save
			#Mailer.send_new_entry(@entry, current_user).deliver
			redirect_to @entry
		else
			render :new 
		end
	end

	
	def show
		@entry = Entry.find params[:id]
	end

	
	def edit
		@entry = Entry.find params[:id]
	end

	
	def update
		#binding.pry
	
		load_entry
		@entry.update entry_params
		
		#try and save
		if @entry.save
			redirect_to @entry
		else
			render :edit
		end
	end
	
	
	def destroy	
		if @entry.destroy
			redirect_to entries_path
		else
			redirect_to @entry
		end
	end

    private
    
    
   #send out email once user fills out form
	#def deliver_email(entry)
		
	#	redirect_to entries_path
	#end
	
	def load_entry
		@entry = Entry.find(params[:id])
	end
	
	#require that they have an entry and get these attributes
	def entry_params
		params.require('entry').permit(:name_item, :description_item, :category, :pickup_date, :pickup_time, :street1, :street2, :city, :state, :zipcode, :phone )
	end

end
