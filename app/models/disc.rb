class Disc < ApplicationRecord

	has_many :tunes
	belongs_to :product

end
