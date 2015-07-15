class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :about
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
