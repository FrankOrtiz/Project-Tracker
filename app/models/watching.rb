class Watching < ActiveRecord::Base
	belongs_to :users
	belongs_to :projects
end
