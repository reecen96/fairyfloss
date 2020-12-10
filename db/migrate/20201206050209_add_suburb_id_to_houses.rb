class AddSuburbIdToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :suburb_id, :integer
  end
end
