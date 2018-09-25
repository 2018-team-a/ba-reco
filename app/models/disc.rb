class Disc < ApplicationRecord

	has_many :tunes
	belongs_to :product

  accepts_nested_attributes_for :tunes, allow_destroy: true, reject_if: :all_blank

end
