class Purchase < ApplicationRecord

	has_many :purchase_singles
	belongs_to :user
	belongs_to :destination

	enum status: { 受付: 0, 商品準備中: 1, 出荷済: 2 }

	def self.search(search)
		if search
			Purchase.where(['created_at LIKE ?', "%#{search}%"])
		else
			Purchase.all
		end
	end

end
