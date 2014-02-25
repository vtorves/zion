class AddAccountToTickets < ActiveRecord::Migration
  def change
    add_reference :tickets, :account, index: true
    remove_column :tickets, :group

  end
end
