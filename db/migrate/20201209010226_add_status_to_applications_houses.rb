class AddStatusToApplicationsHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :applications_houses, :status, :boolean
  end
end
