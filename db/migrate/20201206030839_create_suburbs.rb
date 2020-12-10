class CreateSuburbs < ActiveRecord::Migration[5.2]
  def change
    create_table :suburbs do |t|
      t.text :name
      t.float :avrent
      t.text :descrip
      t.integer :pop
      t.integer :age
      t.boolean :pt
      t.text :image

      t.timestamps
    end
  end
end
