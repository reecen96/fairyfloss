class CreateTransports < ActiveRecord::Migration[5.2]
  def change
    create_table :transports do |t|
      t.text :name

      t.timestamps
    end
  end
end
