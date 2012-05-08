class Company < ActiveRecord::Base
  attr_accessible :logo_url, :name

  has_many :tickets

  # validates :logo_url, :presence => true
end
