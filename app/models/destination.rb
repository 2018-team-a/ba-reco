class Destination < ApplicationRecord
	has_many :purchases
	belongs_to :user

	validates :postal_code, presence: true
  validates :destination, presence: true

end
