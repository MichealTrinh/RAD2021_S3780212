module CollectionsHelper
  def getProductCount(collection)
    collection.products.count
  end
  def getAllProducts
    Collection.find(params[:id]).products
  end
end
