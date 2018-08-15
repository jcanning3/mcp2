class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :task_type, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
