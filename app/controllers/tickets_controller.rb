class TicketsController < ApplicationController

 # before_filter :authenticate_user!, only: [:show]

  def index
  	@tickets = Ticket.all
  end

  def show
  	#ticket_path: helper that generate the url
  	@ticket = Ticket.find(params[:id])
  end

  def new
  end

end