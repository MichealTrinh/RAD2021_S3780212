module ImagesHelper
  def getAllImagesForProduct
    Image.all.where("product_id = " + @product.id.to_s)
  end
end
