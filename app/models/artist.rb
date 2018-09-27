class Artist < ApplicationRecord

	has_many :tunes

	validates :name, presence: true

	def self.search(search)
		if search
			Artist.where(['name LIKE ?', "%#{search}%"])
		else
			Artist.all
		end
	end

end
