class AddTransitRefToVolunteers < ActiveRecord::Migration
  def change
  	add_reference :volunteers, :transit, index: true, foreign_key: true
  end
end
