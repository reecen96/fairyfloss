class AddInfoToTransports < ActiveRecord::Migration[5.2]
  def change
    add_column :transports, :info, :text
  end
end
