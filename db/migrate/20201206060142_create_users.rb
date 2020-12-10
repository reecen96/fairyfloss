class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :password
      t.text :name
      t.text :bio
      t.text :image
      t.boolean :verified

      t.timestamps
    end
  end
end
