class Guitar < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :guitar_type
  belongs_to :strings_number

  with_options presence: true do
    validates :guitar_name
    validates :price
    validates :features
    validates :guitar_images
  end

  with_options presence: true, numericality: { other_than: 1 } do
    validates :guitar_type_id
    validates :strings_number_id
  end

  belongs_to :builder

  has_one_attached :guitar_images

end
