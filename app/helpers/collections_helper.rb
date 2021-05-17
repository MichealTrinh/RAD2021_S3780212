module CollectionsHelper
  def getProductCount(collection)
    collection.products.count
  end
  def getAllProducts
    if params[:id].to_i == 0
      @products = Product.all
    else
      @collection.products
    end
  end
end
