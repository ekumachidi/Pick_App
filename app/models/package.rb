class Package < ActiveRecord::Base
  belongs_to :user
<<<<<<< HEAD
  has_one :assignment
=======
  validates :tracking_code, presence: true
  validates :weight_kg, presence: true, numericality: { only_integer: true }
  # validates :email, uniqueness: true
  validates :vendor, presence: true
  validates :location, presence: true

>>>>>>> 1aae02060a6f07311f34bb8d595de7e61a09b52c
end
