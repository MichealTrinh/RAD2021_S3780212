class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :product
  after_create :incrementTimesPurchased
  validates :color, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :size, presence: true

  def incrementTimesPurchased
    @product = Product.find_by(:id => Cart.all.last.product_id)
    @product.update(:timesPurchased => (@product.timesPurchased + 1))
  end
end
