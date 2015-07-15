class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :gender
      t.integer :co_weight
      t.integer :tree_offset
      t.integer :rand_offset

      t.timestamps null: false
    end
  end
end
