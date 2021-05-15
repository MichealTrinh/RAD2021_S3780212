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

  def updateNewIns
    Collection.find(4).products.each do |p|
      @difference = ((((p.created_at - Time.now) / 60) / 60) / 24) * -1
      if (@difference > 90)
        p.collection.delete(Collection.find(4))
      end
    end
  end
end
