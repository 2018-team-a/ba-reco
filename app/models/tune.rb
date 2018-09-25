class Tune < ApplicationRecord

	belongs_to :disc
	belongs_to :artist
	belongs_to :genre
end
