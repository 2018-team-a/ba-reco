class Tune < ApplicationRecord

	belongs_to :disc
	belongs_to :artist
	belongs_to :genre

	validates :title, presence: true

end
