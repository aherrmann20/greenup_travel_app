class Transit < ActiveRecord::Base
	has_and_belongs_to_many :volunteers
end
