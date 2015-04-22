class PlacesController < ApplicationController

	def index
		@places = Place.all
		render "index"
	end

	def show
		@entry = Place.find_by(:id => params["id"])
		@reviews = Review.where(:place_id => params["id"]).order("id DESC")
		render "show"
	end

	def submitted 
		@title = Place.find_by(:id => params["id"])[:title]
		@rating = params["rating"]
		@review = params["review"]
		@title = params["title"]
	end

	def delete
		Place.find_by(:id => params["id"]).delete
		redirect_to "/places"	
	end

	def new
		render "new"	
	end

	def create
		p = Place.new
		p[:title] = params["title"]
		p[:photo_url] = params["url"]
		p[:admission_price] = params["price"]
		p[:description] = params["description"]
		p.save
		redirect_to "/places"
	end

	def edit
		@entry = Place.find_by(:id => params["id"])
		render "edit"
	end

	def update
		p = Place.find_by(:id => params["id"])
		p.update_attributes(:title => params["title"], 
						   :photo_url => params["photo_url"], 
						   :admission_price => params["admission_price"],
						   :description => params["description"])
		redirect_to "/places/#{p[:id]}"
	end

	def review
		r = Review.new
		r[:place_id] = params["id"]
		r[:title] = params["title"]
		r[:rating] = params["rating"]
		r[:description] = params["description"]
		r.save

		redirect_to "/places/#{params["id"]}"
	end

end

  # title: string
  # photo_url: string
  # admission_price: integer
  # description: text