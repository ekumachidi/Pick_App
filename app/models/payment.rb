class Payment < ActiveRecord::Base
	# validates :card_number, presence: true, if: :paid_with_card?
end
