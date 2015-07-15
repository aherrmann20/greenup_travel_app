class AddVolunteerRefToTransits < ActiveRecord::Migration
  def change
  	add_reference :transits, :volunteer, index: true, foreign_key: true
  end
end
