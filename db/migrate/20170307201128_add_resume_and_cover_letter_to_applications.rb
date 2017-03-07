class AddResumeAndCoverLetterToApplications < ActiveRecord::Migration[5.0]
  def up
    add_attachment :applications, :resume
    add_attachment :applications, :cover_letter
  end

  def down
    remove_attachment :applications, :resume
    remove_attachment :applications, :cover_letter
  end
end
