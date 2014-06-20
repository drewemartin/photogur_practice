class PicturesController < ApplicationController

	def index
		@pictures = Picture.all
  	end

  	def show
  		
	    @picture = Pictures.find(params[:id])
	  
  	end

	def new
		@picture = Picture.new
	end

	def create
	end
end