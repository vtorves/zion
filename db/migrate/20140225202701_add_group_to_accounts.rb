class AddGroupToAccounts < ActiveRecord::Migration
  def change
    add_reference :accounts, :group, index: true
  end
end
