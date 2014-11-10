class Tag < ActiveRecord::Base
	# self-reference
	has_and_belongs_to_many :children,
		class_name: "Tag",
		join_table: :tag_is_a,
		foreign_key: :parent_id,
		association_foreign_key: :tag_id

	# self-reference
	has_and_belongs_to_many :parents,
		class_name: "Tag",
		join_table: :tag_is_a,
		foreign_key: :tag_id,
		association_foreign_key: :parent_id

	has_many :hasTags
	has_many :locations, through: :hasTag
end
