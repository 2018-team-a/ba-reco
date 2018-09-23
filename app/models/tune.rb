class Tune < ApplicationRecord

	belongs_to :disc
	belongs_to :artist
	belongs_to :genre
	enum genre: {ジャンル0: 0,ジャンル1: 1,ジャンル2: 2}

end
