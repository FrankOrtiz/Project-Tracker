class Update < ActiveRecord::Base
  belongs_to :project
		validates :who, presence: true,
						length:(3..20)
		validates :description, presence: true
end
