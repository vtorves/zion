class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :subject
      t.string :demanda
      t.string :private
      t.string :ip
      t.string :status
      t.string :local
      t.string :reopen
      t.string :closed
      t.string :priority
      t.string :account

      t.timestamps
    end
    add_index :tickets, :account
  end
end
