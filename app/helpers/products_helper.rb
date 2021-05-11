module ProductsHelper
  def price_dollars(price)
    (price + 0.0) / 100
  end
  def price_dollars=(price, val)
    price = val * 100
  end
  def getRandomProduct
    Product.find(rand(1..Product.all.count))
  end
end
