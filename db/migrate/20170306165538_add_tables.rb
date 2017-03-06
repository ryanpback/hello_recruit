class AddTables < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |j|
      j.string :title
      j.string :location
      j.string :job_type
      j.string :compensation
      j.string :description
      j.string :duration, default: ""
      j.timestamps
    end
  end
end
