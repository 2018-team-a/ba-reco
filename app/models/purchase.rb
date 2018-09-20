class Purchase < ApplicationRecord

	has_many :purchase_singles
	belongs_to :user
	belongs_to :destination
end
