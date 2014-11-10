class Location < ActiveRecord::Base
	has_many :links, dependent: :destroy
	has_many :hasTags
	has_many :tags, through: :hasTags
end
