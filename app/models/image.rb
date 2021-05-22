class Image < ApplicationRecord
  belongs_to :product
  validates :name, presence: true, length: { maximum: 75 }
  validates :alt, length: { maximum: 255 }
end
