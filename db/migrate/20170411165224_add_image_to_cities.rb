class AddImageToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :image_url, :string
  end
end
