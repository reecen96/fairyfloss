class AddFeedbackToApplications < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :feedback, :text
  end
end
