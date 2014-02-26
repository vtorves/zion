module TicketsHelper
	def create_for(account_id)
		@user = Account.select(:lastname).where(id: account_id).first
		return @user.lastname
	end
end

