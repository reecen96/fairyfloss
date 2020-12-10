class CreateApplicationsHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :applications_houses do |t|
      t.integer :house_id
      t.integer :application_id
    end
  end
end
