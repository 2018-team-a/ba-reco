class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :carts
  has_many :products, through: :carts
  has_many :destinations
  has_many :purchases

  validates :name_family_name, presence: true

  validates :name_name, presence: true

  validates :furigana_family_name, presence: true, format: {
                   with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
                   message: "全角カタカナのみで入力して下さい"
                 }

  validates :furigana_name, presence: true, format: {
                   with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
                   message: "全角カタカナのみで入力して下さい"
                 }

  validates :postal_code, presence: true, format: {
                    with: /\A\d{3}\-?\d{4}\z/
                 }

  validates :address, presence: true

  validates :phone_number, presence: true, format: {
                    with: /\A\d{10}$|^\d{11}\z/
                  }

end
