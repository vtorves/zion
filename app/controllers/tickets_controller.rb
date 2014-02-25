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

### FILTROS #############
def open_group ( )
	@account = Account.where(owner_id: current_user)
	
	@tickets = Ticket.where( closed: nil, account: nil)
	render "tickets/open_group"
end


def open_private  ##atual
	   @account = Account.where(owner_id: current_user)
		
		@tickets = Ticket.where(assigned: current_user, group_id: @account.id)
	render "tickets/open_private"
end

def close_private
	@tickets =  Ticket.where(assigned: current_user, reopen: nil)
	render "tickets/close_private"
end

def close_group
	@tickets =  Ticket.where(assigned: current_user, reopen: nil)
	render "tickets/close_group"
end
##########################
private
def ticket_params
	params.require(:ticket).permit( :number_only,  :subject, :demand, :private, :ip, :status, :local, :reopen, :closed, :priority, :group_id, :assigned, :account_id)
end

end
