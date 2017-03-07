class AddApplicationTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :jobs_users
    create_table :applications do |a|
      a.string :first_name
      a.string :last_name
      a.string :email
      a.string :phone_number
      a.string :skills
      a.string :street_address
      a.string :city
      a.string :state
      a.string :zip_code
    end
  end
end
