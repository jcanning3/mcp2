class AddConfirmationToFlight < ActiveRecord::Migration[5.2]
  def change
    add_column :flights, :confirmation, :string
  end
end
