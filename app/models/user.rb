class User < ActiveRecord::Base

	has_secure_password
<<<<<<< HEAD
	 validates :password, length: {minimum: 8}
=======
	# validates :password, length {minimum: 8}
>>>>>>> 1515b4b68bf7311968a6a1c9a1197808656b9e5f
	has_many :packages
	has_many :assignments

end
