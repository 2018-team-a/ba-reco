class Product < ApplicationRecord

	has_many :carts
  has_many :users, through: :carts
	has_many :discs
	has_many :purchase_singles
  belongs_to :label

	validates :title, presence: true
	validates :label_id, presence: true
	validates :price, presence: true
	validates :image, presence: true
	validates :release_date, presence: true
	validates :stock_count, presence: true
	validates :disc_count, presence: true

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
