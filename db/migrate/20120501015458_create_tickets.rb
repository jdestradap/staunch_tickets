class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.datetime :flight_date
      t.float :flight_duration
      t.boolean :insurance
      t.integer :price  
      t.string :from_location
      t.string :string
      t.string :to_location
      t.references :company
      t.references :cart_ticket
      
      t.timestamps
    end

    add_index :tickets, :company_id
    add_index :tickets, :cart_ticket_id
  end
end
