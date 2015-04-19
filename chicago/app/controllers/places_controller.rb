class PlacesController < ApplicationController

	def index
		@places = Place.all
	end

	def show
		@entry = Place.find_by(:id => params["id"])
		@entry_title = @entry[:title]
		@entry_pic_url = @entry[:photo_url]
		@entry_price = @entry[:admission_price]
		@entry_description = @entry[:description]
	end

	def delete
		@entry = Place.find_by(:id => params["id"])
		@entry.destroy
		redirect_to "/places"
	end

	def new
		redirect_to "/places/new"
		
	end

	def create
		
		redirect_to "/places"
	end

	def edit
		
	end

	def update
		
	end

end

  # title: string
  # photo_url: string
  # admission_price: integer
  # description: text