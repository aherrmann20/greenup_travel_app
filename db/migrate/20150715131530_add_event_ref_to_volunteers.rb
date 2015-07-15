class AddEventRefToVolunteers < ActiveRecord::Migration
  def change
  	add_reference :volunteers, :event, index: true, foreign_key: true
  end
end
