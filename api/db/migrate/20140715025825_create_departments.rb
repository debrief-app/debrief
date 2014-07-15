class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name, null: false, limit: 1024
      t.references :account, index: true, null: false

      t.timestamps
    end
  end
end
