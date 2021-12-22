class Builder < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :private_order
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  with_options presence: true do
    validates :brand_name
    validates :area
    validates :city
    validates :introduction
    validates :price_zone
    validates :private_order_id, numericality: { other_than: 1 }
    validates :images
  end

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }

  has_one_attached :images
end
