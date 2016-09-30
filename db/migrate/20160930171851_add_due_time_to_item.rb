class AddDueTimeToItem < ActiveRecord::Migration
  def change
    add_column :items, :due_time, :time
  end
end
