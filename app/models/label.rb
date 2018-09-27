class Label < ApplicationRecord

	has_many :products

	validates :name, presence: true

	def self.search(search)
		if search
			Label.where(['name LIKE ?', "%#{search}%"])
		else
			Label.all
		end
	end

end
