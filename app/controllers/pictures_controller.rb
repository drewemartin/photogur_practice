class PicturesController < ApplicationController

	def index
		@pictures = Picture.all
  	end

  	def show
  		
	    @picture = Picture.find(params[:id])
	  
  	end

	def new
		@picture = Picture.new
	end

	def create
		@picture = Picture.new(picture_params)
		if @picture
			@picture.save
			redirect_to pictures_url
		else
			render :new 
		end	
	end

	private
	def picture_params
		params.require(:picture).permit(:artist, :title, :url)
		#this private method is used to pass a "true" 
		#statement on the create method. "require" demands
		#an instance of the Picture class and permits three
		#arguments to be passed 
	end
end