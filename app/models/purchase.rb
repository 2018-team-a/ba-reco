class Purchase < ApplicationRecord

	has_many :products
	belongs_to :user
	belongs_to :destination
end
