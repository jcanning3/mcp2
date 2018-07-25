class AddForeignKeyToMovements < ActiveRecord::Migration[5.2]
  def change
      add_reference :movements, :piece, foreign_key: true
  end
end
