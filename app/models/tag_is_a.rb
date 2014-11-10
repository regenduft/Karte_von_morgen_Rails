class TagIsA < ActiveRecord::Base
  belongs_to :tag
  belongs_to :parent, class_name: Tag
end
