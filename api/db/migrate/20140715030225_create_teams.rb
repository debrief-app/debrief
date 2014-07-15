class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name, null: false, limit: 1024
      t.references :account, index: true, null: false
      t.references :department, index: true

      t.timestamps
    end
  end
end
