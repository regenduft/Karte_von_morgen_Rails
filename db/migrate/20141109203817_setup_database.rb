class SetupDatabase < ActiveRecord::Migration
  def change

    create_table :entries do |t|
      t.string :name
      t.string :description
      t.string :city
      t.string :zip
      t.string :street
      t.string :phone
      t.string :email
      t.string :url
      t.string :position
      t.string :openingHours

      t.timestamps
    end

    create_table :categories do |t|
      t.references :parent, index: true 
      t.string :name

      t.timestamps
    end

    create_table :has_categories, id: false do |t|
      t.references :entry, index: true
      t.references :category, index: true

      t.timestamps
    end

  end
end
