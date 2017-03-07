class AddResumeAndCoverLetter < ActiveRecord::Migration[5.0]
  def up
    add_attachment :users, :resume
    add_attachment :users, :cover_letter
  end

  def down
    remove_attachment :users, :resume
    remove_attachment :users, :cover_letter
  end
end
