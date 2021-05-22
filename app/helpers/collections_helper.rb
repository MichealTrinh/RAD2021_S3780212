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

  def checkCollections(product)
    if session['filterCollections']
      product.collections.each do |c|
        puts session['filterCollections'].to_s
        session['filterCollections'].each do |f|
          if c.name ===  f
            puts c.name
            puts f
            puts "pass ----------"
            return true
          end
        end
      end
    end
    return false
  end

  def checkColors(product)
    if session["filterColors"]
      session["filterColors"].each do |c|
        if @color = Color.where(:product_id => product.id).first
          if c === "white"
            if @color.white
              return true
            end
          end
          if c === "gray"
            if @color.gray
              return true
            end
          end
          if c === "black"
            if @color.black
              return true
            end
          end
          if c === "red"
            if @color.red
              return true
            end
          end
          if c === "blue"
            if @color.blue
              return true
            end
          end
          if c === "green"
            if @color.green
              return true
            end
          end
          if c === "brown"
            if @color.brown
              return true
            end
          end
          if c === "purple"
            if @color.purple
              return true
            end
          end
        end
      end
      return false
    else
      return true
    end
  end

  def checkSizes(product)
    if session["filterSizes"]
      session["filterSizes"].each do |c|
        if @size = Size.where(:product_id => product.id).first
          if c === "s"
            if @size.s
              return true
            end
          end
          if c === "m"
            if @size.m
              return true
            end
          end
          if c === "l"
            if @size.l
              return true
            end
          end
          if c === "xl"
            if @size.xl
              return true
            end
          end
          if c === "xxl"
            if @size.xxl
              return true
            end
          end
        end
      end
      return false
    else
      return true
    end
  end
end
