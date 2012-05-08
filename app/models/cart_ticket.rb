class CartTicket < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :cart
  belongs_to :ticket
end
