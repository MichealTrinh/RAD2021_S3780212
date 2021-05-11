class Product < ApplicationRecord
  def price_dollars
    (self.price + 0.0) / 100
  end
  def price_dollars=(val)
    self.price = val * 100
  end
end
