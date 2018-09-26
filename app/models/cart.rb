class Cart < ApplicationRecord

	belongs_to :product
	belongs_to :user

	validates :sheet_number, numericality: { only_integer: true, greater_than_or_equal_to: 1}
	validates :sheet_number, presence: true
end
