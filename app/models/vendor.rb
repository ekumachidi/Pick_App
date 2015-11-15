class Vendor < ActiveRecord::Base
	has_many :packages
end
