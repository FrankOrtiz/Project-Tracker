class Project < ActiveRecord::Base
	has_many :updates
		validates :who, presence: true,
                       length: { in: 3..15 }
        
end
