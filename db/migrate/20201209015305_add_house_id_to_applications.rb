class AddHouseIdToApplications < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :house_id, :text
  end
end
