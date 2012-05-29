class Admin::TicketsController < AdminController
  # GET /admin/tickets
  # GET /admin/tickets.json
  def index
    @admin_tickets = Ticket.paginate(:page => params[:page], :per_page => 5)#Ticket.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_tickets }
    end
  end

  # GET /admin/tickets/1
  # GET /admin/tickets/1.json
  def show
    @admin_ticket = Ticket.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_ticket }
    end
  end

  # GET /admin/tickets/new
  # GET /admin/tickets/new.json
  def new
    @admin_ticket = Ticket.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_ticket }
    end
  end

  # GET /admin/tickets/1/edit
  def edit
    @admin_ticket = Ticket.find(params[:id])
  end

  # POST /admin/tickets
  # POST /admin/tickets.json
  def create
    @admin_ticket = Ticket.new(params[:ticket])

    respond_to do |format|
      if @admin_ticket.save
        format.html { redirect_to admin_ticket_path(@admin_ticket), notice: 'Ticket was successfully created.' }
        format.json { render json: @admin_ticket, status: :created, location: @admin_ticket }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/tickets/1
  # PUT /admin/tickets/1.json
  def update
    @admin_ticket = Ticket.find(params[:id])

    respond_to do |format|
      if @admin_ticket.update_attributes(params[:ticket])
        format.html { redirect_to admin_ticket_path(@admin_ticket), notice: 'Ticket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/tickets/1
  # DELETE /admin/tickets/1.json
  def destroy
    @admin_ticket = Ticket.find(params[:id])
    @admin_ticket.destroy

    respond_to do |format|
      format.html { redirect_to admin_tickets_url }
      format.json { head :no_content }
    end
  end
end
