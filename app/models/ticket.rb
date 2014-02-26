class Ticket < ActiveRecord::Base
	#belongs_to :account
	belongs_to :group


	belongs_to :group, class_name: 'Group', :foreign_key => "group_id" 
	belongs_to :account, class_name: 'Account', :foreign_key => "account_id" 
	belongs_to :account, class_name: 'Account', :foreign_key => "assigned" 


end
