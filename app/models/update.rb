class Update < ActiveRecord::Base
  belongs_to :project
		validates :who, presence: true,
					length: { in: 3..25 }
end
