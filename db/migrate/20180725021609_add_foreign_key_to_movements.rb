class AddForeignKeyToMovements < ActiveRecord::Migration[5.2]
  def change
      add_reference :movements, :piece, foreign_key: true
      add_reference :performers, :piece, foreign_key: true
      add_reference :performances, :piece, foreign_key: true
  end
end
