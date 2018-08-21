class ChangeTaskTypeIdToTaskIdInTaskTypes < ActiveRecord::Migration[5.2]
  def change
    rename_column :task_types, :task_type_id, :task_id
  end
end
