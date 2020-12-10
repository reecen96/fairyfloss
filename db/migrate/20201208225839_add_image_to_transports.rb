class AddImageToTransports < ActiveRecord::Migration[5.2]
  def change
    add_column :transports, :image, :text
  end
end
