class CreateTransits < ActiveRecord::Migration
  def change
    create_table :transits do |t|
      t.string :mode
      t.integer :distance
      t.integer :co_output
      t.integer :passengers

      t.timestamps null: false
    end
  end
end
