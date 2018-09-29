class Purchase < ApplicationRecord

	has_many :purchase_singles
	belongs_to :user


	enum status: { 商品準備中: 0, 出荷済: 1 }

	def self.search(search)
		if search
			Purchase.where(['created_at LIKE ?', "%#{search}%"])
		else
			Purchase.all
		end
	end

end
