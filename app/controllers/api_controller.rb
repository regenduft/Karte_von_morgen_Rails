class ApiController < ApplicationController

  # serialize all Locations from the database as json, 
  # including associated tags and links
  def index
  	locations = Location.all

  	# collect associated entities into separate arrays
  	links = []
  	tags = []
  	locations.includes(:tags).includes(:links).each do |location|
  		tags.push location.tags
  		links.push location.links
  	end
  	# TODO: find out how to serialize the associated entities inline

  	render json: {locations: locations, links: links, tags: tags}
  end

end
