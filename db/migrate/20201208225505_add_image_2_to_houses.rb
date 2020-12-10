class AddImage2ToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :image_2, :text
  end
end
