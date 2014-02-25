class AddGroupToTickets < ActiveRecord::Migration
  def change
    add_reference :tickets, :group, index: true
  end
end
