class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_companies

  private 

  def load_companies
  	@sidebar_companies = Company.all
  end
end
