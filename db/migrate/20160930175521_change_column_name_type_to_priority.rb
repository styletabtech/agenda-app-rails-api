class ChangeColumnNameTypeToPriority < ActiveRecord::Migration
  def change
    rename_column :items, :type, :priority
  end
end
