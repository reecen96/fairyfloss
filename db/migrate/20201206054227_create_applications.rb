class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.text :title
      t.text :message
      t.float :offer
      t.text :image

      t.timestamps
    end
  end
end
