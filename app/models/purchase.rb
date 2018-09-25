class Purchase < ApplicationRecord

	has_many :purchase_singles
	belongs_to :user
	belongs_to :destination

	def self.search(search)
		if search
			Purchase.where(['created_at LIKE ?', "%#{search}%"])
		else
			Purchase.all
		end
	end

end
