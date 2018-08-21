class AddNameToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :name, :text
    add_column :tasks, :order, :text
    remove_column :tasks, :type_id
    remove_column :tasks, :task_type_id
    remove_column :task_types, :name
    remove_column :task_types, :order
    add_reference :task_types, :type, foreign_key: true
    add_reference :task_types, :task_type, foreign_key: true
  end
end
