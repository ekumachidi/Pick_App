class Assignment < ActiveRecord::Base
  belongs_to :package
  belongs_to :courier
  belongs_to :admin
end
