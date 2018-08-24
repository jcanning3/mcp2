class AddStaffToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :staff, :integer
    add_column :tasks, :adjust_start, :integer
  end
end
