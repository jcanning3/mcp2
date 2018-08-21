class ChangeOrderToIntegerInTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :order
    add_column :tasks, :order, :integer
  end
end
