class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name, null: false, limit: 1024

      t.timestamps
    end
  end
end