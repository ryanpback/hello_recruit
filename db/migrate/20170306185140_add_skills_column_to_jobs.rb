class AddSkillsColumnToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :skills, :string
  end
end
