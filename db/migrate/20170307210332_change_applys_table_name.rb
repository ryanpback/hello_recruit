class ChangeApplysTableName < ActiveRecord::Migration[5.0]
  def change
    rename_table :applys, :applies
  end
end
