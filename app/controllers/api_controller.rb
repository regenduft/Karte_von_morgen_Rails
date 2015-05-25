class ApiController < ApplicationController

  # serialize all Locations from the database as json, 
  # including associated tags and links
  def index
  	entries = Entry.all

  	# collect associated entities into separate arrays
  	categories = []
  	entries.includes(:categories).each do |entry|
  		categories.push entry.categories
  	end
  	# TODO: find out how to serialize the associated entities inline

  	render json: {entries: entries, categories: categories}
  end

end
