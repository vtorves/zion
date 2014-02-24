class AddAssignedToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :assigned, :integer
  end
end
