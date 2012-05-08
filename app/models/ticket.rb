class Ticket < ActiveRecord::Base
  attr_accessible :flight_date, :flight_duration, :from_location, :insurance, :name, :price, :string, :to_location, :company_id
  
  belongs_to :company
  has_many :cart_ticekts
  has_many :cats, :through => :cart_ticekts
  
  #validate price cannot be less than 0 
  validates :price, :numericality => { :greater_than => 0 } 
end
