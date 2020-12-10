class AddApprovedToApplicationsHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :applications_houses, :approved, :boolean
  end
end
