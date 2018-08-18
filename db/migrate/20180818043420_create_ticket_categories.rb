class CreateTicketCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_categories do |t|
      t.text :name

      t.timestamps
    end
  end
end
