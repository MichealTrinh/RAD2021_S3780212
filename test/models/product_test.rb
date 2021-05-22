require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @product  = Product.new(name: "Test Product", description: "A test product.", price: 100, timesViewed: 0, timesSaved: 0, timesPurchased: 0)
  end

  test "should be valid" do
    assert @product.valid?
  end
end
