class AccountsController < ApplicationController
	def index
		@account = Account.new
	end
	def index
		@account = Account.new(account_params)
		if @account.save
			redirect_to root_path, notice: "Criado com Sucesso"
		else 
			render action: 'new'
			end

	end
	private 
	def account_params
		params.require(:account).permit(:name, :lastname, :phone, :address)
	end
end