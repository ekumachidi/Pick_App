class User < ActiveRecord::Base
<<<<<<< HEAD
	has_secure_password
	# validates :password, length {minimum: 8}
	# has_many :packages
=======
	# has_secure_password
	# validates :password, length {minimum: 8}
	has_many :packages
>>>>>>> origin/master
end
