class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :owner_id
      t.string :lastname
      t.string :address
      t.string :cellphone
      t.string :phone
      t.string :observation
      t.string :status
      t.string :work
      t.string :group
      t.timestamps
    end
  end
end
