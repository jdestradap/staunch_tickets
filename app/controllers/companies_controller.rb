class CompaniesController < ApplicationController

  before_filter :fetch_ticket, only: [:show, :edit, :update, :destroy]
  
  def show
  	@tickets = @company.tickets
  	# @tickets = Ticket.paginate(:page => params[:page])
  end

  private

  def fetch_ticket
    @company = Company.find(params[:id])
  end
end