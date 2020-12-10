class CreateHousesTransports < ActiveRecord::Migration[5.2]
  def change
    create_table :houses_transports do |t|
      t.integer :transport_id
      t.integer :house_id
    end
  end
end
