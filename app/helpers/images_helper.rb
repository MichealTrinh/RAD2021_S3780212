module ImagesHelper
  def getAllImagesForProduct(product)
    Image.all.where("product_id = " + product.id.to_s)
  end
end
