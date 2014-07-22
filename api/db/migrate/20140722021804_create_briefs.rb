class CreateBriefs < ActiveRecord::Migration
  def change
    create_table :briefs do |t|
      t.text :text, null: false
      t.date :date, null: false
      t.references :department, index: true
      t.references :team, index: true
      t.references :user, index: true, null: false

      t.timestamps
    end
  end
end
