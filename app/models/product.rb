class Product < ApplicationRecord

	has_many :carts
    has_many :users, through: :carts
	has_many :discs
	has_many :purchase_singles
    belongs_to :label
	attachment :image

	def self.search(search)
    if search
    Product.where(['title LIKE ?', "%#{search}%"])
    else
    Product.all
    end

  end

end
