class Package < ActiveRecord::Base
  belongs_to :user
  has_one    :assignment
end
