class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  has_many :cart_tickets
  has_many :tickets, :through => :cart_tickets
end
