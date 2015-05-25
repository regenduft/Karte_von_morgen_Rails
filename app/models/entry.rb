class Entry < ActiveRecord::Base
	has_many :hasCategories
	has_many :categories, through: :hasCategories
end
