class Purchase < ApplicationRecord

	has_many :purchase_single
	belongs_to :user
	belongs_to :destination
end
