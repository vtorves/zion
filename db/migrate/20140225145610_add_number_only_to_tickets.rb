class AddNumberOnlyToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :number_only, :string
  end
end
