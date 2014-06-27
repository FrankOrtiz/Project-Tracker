class User < ActiveRecord::Base
	has_secure_password
	has_many :watchings
	has_many :projects
	has_many :updates
	validate :username, presence: true,
					length: { in: 3..15 }
					
	validate :name, presence: true,
					length: { in: 3..15 }
					
	validate :email, presence: true

end
