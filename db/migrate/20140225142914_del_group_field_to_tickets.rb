class DelGroupFieldToTickets < ActiveRecord::Migration
  def change
  	   remove_column :tickets, :group
  end
end
