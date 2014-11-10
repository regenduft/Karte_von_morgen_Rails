class SetupDatabase < ActiveRecord::Migration
  def change

    create_table :locations do |t|
      t.string :name
      t.string :lang
      t.string :country
      t.string :province
      t.string :city
      t.string :zip
      t.string :street
      t.string :houseNumber
      t.string :phone
      t.integer :createdBy
      t.integer :modifiedBy
      t.string :position
      t.string :icon
      t.string :openingHours
      t.string :description
      t.string :type

      t.timestamps
    end

    create_table :tags do |t|
      t.string :type
      t.string :cssClass
      t.string :icon
      t.string :values
      t.string :foreignId

      t.timestamps
    end

    create_table :links do |t|
      t.references :location, index: true
      t.string :lang
      t.string :tag
      t.string :url

      t.timestamps
    end

    create_table :tag_is_a, id: false do |t|
      t.integer :tag_id
      t.integer :parent_id
      t.integer :position
    end

    add_index :tag_is_a, [:tag_id], name: "index_tag_is_a_on_tag_id"
    add_index :tag_is_a, [:parent_id], name: "index_tag_is_a_on_parent_id"

    create_table :has_tags, id: false do |t|
      t.references :location, index: true
      t.references :tag, index: true
      t.integer :percentage

      t.timestamps
    end

  end
end
