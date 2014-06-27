class Project < ActiveRecord::Base
	has_many :watchings
	has_many :users, through: :watchings
	has_many :updates
		validates :who, presence: true
		validates :name, presence: true
end
