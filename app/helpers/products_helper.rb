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

  def getPopularProducts
    @products = Product.all
    @products.each do |p|
      p.class_eval do
        attr_accessor :popularityScore
      end
      p.popularityScore = p.timesSaved + p.timesPurchased
    end
    @products.sort_by{|p| p.popularityScore}.reverse!
  end
end
