class Destination < ApplicationRecord
	belongs_to :user

	validates :postal_code, presence: true
  validates :destination, presence: true

end
