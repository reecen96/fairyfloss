class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.text :title
      t.integer :bed
      t.integer :bath
      t.integer :kitchen
      t.boolean :parking
      t.float :rent
      t.integer :leasem
      t.text :descrip

      t.timestamps
    end
  end
end
