class AddHouseNumToApplications < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :house_num, :integer
  end
end
