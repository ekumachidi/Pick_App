class Package < ActiveRecord::Base
  belongs_to :user
  validates :tracking_code, presence: true
  validates :weight_kg, presence: true, numericality: { only_integer: true }
  # validates :email, uniqueness: true
  validates :vendor, presence: true
  validates :location, presence: true

end
