class Genre < ApplicationRecord

	has_many :tunes

	validates :name, presence: true

end
