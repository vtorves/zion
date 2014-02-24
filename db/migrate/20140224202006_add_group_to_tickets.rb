class AddGroupToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :group, :integer
  end
end
