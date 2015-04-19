class PlacesController < ApplicationController

	def index
		@places = Place.all
	end

	def show
		@place = Place.find_by(:id => params["id"])
	end

	def delete
		@entry = Place.find_by(:id => params["id"])
		@entry.destroy
		redirect_to "/places"
	end

	def new
		
	end

	def create
		
	end

	def edit
		
	end

	def update
		
	end

end