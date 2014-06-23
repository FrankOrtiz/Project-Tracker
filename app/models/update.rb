class Update < ActiveRecord::Base
  belongs_to :project
		validates :description, presence: true
end
