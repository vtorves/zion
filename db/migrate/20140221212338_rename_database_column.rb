class RenameDatabaseColumn < ActiveRecord::Migration
  def self.up
  	rename_column :tickets, :demanda, :demand
  end
  def self.down
  	rename_column :tickets, :demand, :demanda
  end
end
