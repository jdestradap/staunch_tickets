class TicketsController < ApplicationController

  before_filter :authenticate_user!, only: [:show]
  before_filter :fetch_ticket, only: [:show, :edit, :update, :destroy]

  def index
  	@tickets = Ticket.all
    # @tickets =  Ticket.paginate(:page => params[:page], :per_page => 5)    
  end

  def show
  	#ticket_path: helper that generate the url
  end

  def new
    @ticket = Ticket.new
  end

  def edit
  end

  # def create
  #   @ticket = Ticket.new(params[:ticket])
  #   if @ticket.save
  #     flash[:notice] = 'Ticket was created!'
  #     redirect_to tickets_path
  #   else
  #     render :new
  #   end
  # end

  # def update
  #   @ticket.update_attributes(params[:ticket])
  #   if @ticket.save 
  #     flash[:notice] = 'Ticket was updated!'
  #     redirect_to tickets_path
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @ticket.delete
  #   flash[:notice] = 'ticket deleted'
  #   redirect_to tickets_path
  # end

  private

  def fetch_ticket
    @ticket = Ticket.find(params[:id])
  end

end