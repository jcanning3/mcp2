class AddLabelToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :label, :string
  end
end
