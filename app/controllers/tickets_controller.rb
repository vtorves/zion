class TicketsController < ApplicationController
	def new
		@ticket = Ticket.new
	#	@account = Account.all
	end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to root_path, notice: 'Signed up successfully'
    else
      render action: 'new'
    end
  end


	def index
		    @tickets = Ticket.all
	end

private
  def ticket_params
    params.require(:ticket).permit( :subject, :demand, :private, :ip, :status, :local, :reopen, :closed, :priority, :account)
  end

end
