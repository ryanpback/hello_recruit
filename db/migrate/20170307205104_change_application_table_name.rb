class ChangeApplicationTableName < ActiveRecord::Migration[5.0]
  def change
    rename_table :applications, :applys
  end
end
