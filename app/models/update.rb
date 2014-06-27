class Update < ActiveRecord::Base
	belongs_to :project
	validates :description, presence: true

	after_save :update_project

	def update_project
		project.latest_updated = Time.now
		project.save
	end

end