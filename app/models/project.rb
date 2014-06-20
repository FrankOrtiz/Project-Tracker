class Project < ActiveRecord::Base
	has_many :updates
		validates :who, presence: true
end
