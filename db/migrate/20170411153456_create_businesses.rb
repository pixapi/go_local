class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.references :city, foreign_key: true
      t.string :zipcode
      t.string :description
      t.string :phone
      t.string :website
      t.references :category, foreign_key: true
      t.string :image_url
    end
  end
end
