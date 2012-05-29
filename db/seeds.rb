# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

module SampleData
  def self.create_users
    User.delete_all

    User.create!({:first_name => 'Admin', :email => 'admin@example.com', :password => '123123'})
    User.create!({:first_name => 'John', :email => 'john@example.com', :password => '123123'})
    User.create!({:first_name => 'Carl', :email => 'carl@example.com', :password => '123123'})

    User.find_by_email('admin@example.com').update_attribute(:admin, true)
  end

  def self.create_companies
    Company.delete_all

    Company.create!({:name => "Avianca", :logo_url => 'https://www.google.com.co/images/srpr/logo3w.png'})
    Company.create!({:name => "Iberia", :logo_url => 'https://www.google.com.co/images/srpr/logo3w.png'})
    Company.create!({:name => "American Airlines", :logo_url => 'https://www.google.com.co/images/srpr/logo3w.png'})
    Company.create!({:name => "Aeroflot", :logo_url => 'https://www.google.com.co/images/srpr/logo3w.png'})
    Company.create!({:name => "KLM", :logo_url => 'https://www.google.com.co/images/srpr/logo3w.png'})
    Company.create!({:name => "Dutch Airlines", :logo_url => 'https://www.google.com.co/images/srpr/logo3w.png'})
    Company.create!({:name => "Air France", :logo_url => 'https://www.google.com.co/images/srpr/logo3w.png'})
    Company.create!({:name => "Brazilia Airlines", :logo_url => 'https://www.google.com.co/images/srpr/logo3w.png'})
  end

  def self.create_tickets
    Ticket.delete_all

    companies = Company.all.collect{|x| x.id }
    Ticket.create!({:name => 'Super deal',  :company_id => companies.sample, :price => 100})
    Ticket.create!({:name => 'Super deal2', :company_id => companies.sample, :price => 100})
    Ticket.create!({:name => 'Super deal3', :company_id => companies.sample, :price => 100})
    Ticket.create!({:name => 'Super deal4', :company_id => companies.sample, :price => 100})
    Ticket.create!({:name => 'Super deal5', :company_id => companies.sample, :price => 100})
    Ticket.create!({:name => 'Super deal6', :company_id => companies.sample, :price => 100})
  end

  def self.run
    if Rails.env.production? 
      Rails.logger.info "Warning! Trying to run sample data script in production!"
    else    
      puts 'Creating users...'
      create_users
      puts 'Creating companies...'
      create_companies
      puts 'Creating tickets...'
      create_tickets

      puts 'Done!'
    end
  end
end

SampleData.run
