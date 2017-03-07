class AddJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs_users do |u|
      u.integer :user_id
      u.integer :job_id
      u.timestamps
    end
  end
end
