class Entry < ActiveRecord::Base
	has_many :hasCategories
	has_many :categories, through: :hasCategories, autosave: true


	def as_json(options={})
	  super(:include => { :categories => { :only => [:id] } })
	end

end
