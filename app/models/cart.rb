class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :product
  after_create :incrementTimesPurchased

  def incrementTimesPurchased
    @product = Product.find_by(:id => Cart.all.last.product_id)
    @product.update(:timesPurchased => (@product.timesPurchased + 1))
  end
end
