class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|

      t.references :user
      t.references :cart_ticket
      t.timestamps
    end
    add_index :carts, :user_id
    add_index :carts, :cart_ticket_id
  end
end
