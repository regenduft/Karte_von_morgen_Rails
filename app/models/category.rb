class Category < ActiveRecord::Base
  has_many :category, class_name: "Category",
                          foreign_key: "parent_id"
 
  belongs_to :parent, class_name: "Category"

	has_many :hasCategories
	has_many :entries, through: :hasCategory
end
