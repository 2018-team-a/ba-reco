class Product < ApplicationRecord

	has_many :carts
    has_many :users, through: :carts
	has_many :discs
	has_many :purchases
    belongs_to :label
	attachment :image

    accepts_nested_attributes_for :discs

	def self.search(search)
    if search
    Product.where(['title LIKE ?', "%#{search}%"])
    else
    Product.all
    end

  end

end
