class AddIdsToApplicationsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :applications, :job_id, :integer
    add_column :applications, :user_id, :integer
  end
end
