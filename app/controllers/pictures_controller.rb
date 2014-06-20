class PicturesController < ApplicationController

	def index
		@pictures = [
	      {
	        :title  => "The old church on the coast of White sea",
	        :artist => "Sergey Ershov",
	        :url    => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
	      },
	      {
	        :title  => "Sea Power",
	        :artist => "Stephen Scullion",
	        :url    => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
	      },
	      {
	        :title  => "Into the Poppies",
	        :artist => "John Wilhelm",
	        :url    => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
	      }
	    ]
  end

  	def show
  		@pictures = [
	      {
	        :title  => "The old church on the coast of White sea",
	        :artist => "Sergey Ershov",
	        :url    => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
	      },
	      {
	        :title  => "Sea Power",
	        :artist => "Stephen Scullion",
	        :url    => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
	      },
	      {
	        :title  => "Into the Poppies",
	        :artist => "John Wilhelm",
	        :url    => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
	      }
	    ]

	    @picture = @pictures[params[:id].to_i]
	    #since @pictures is an array of hashes by calling
	    #params ID which is called throug the url bar info 
	    #is available through indexing the array once the 
	    #id is converted to an integer
  	end

	
end