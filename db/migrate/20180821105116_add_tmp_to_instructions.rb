class AddTmpToInstructions < ActiveRecord::Migration[5.2]
  def change
    add_column :instructions, :tmp, :text
  end
end
