class RenameColumTitleinTableEventstoName < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :title, :name
  end
end
