class CreateCartTickets < ActiveRecord::Migration
  def change
    create_table :cart_tickets do |t|
      t.integer :cart_id, :null => false
      t.integer :ticket_id , :null => false
      t.timestamps
    end
  end
end
