class AddImage1ToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :image_1, :text
  end
end
