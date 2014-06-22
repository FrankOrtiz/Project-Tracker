class Project < ActiveRecord::Base
	has_many :updates
		validates :who, presence: true
		validates :name, presence: true,
						length:(3..50)
end
