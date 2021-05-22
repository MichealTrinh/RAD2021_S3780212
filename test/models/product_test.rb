require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @product = Product.new(name: "Test Product", description: "A test product.", price: 100, timesViewed: 0, timesSaved: 0, timesPurchased: 0)
  end

  test "should be valid" do
    assert @product.valid?
  end

  # tests for name field
  test "name should be present" do
    @product.name = " "
    assert_not @product.valid?
  end

  test "name should not be longer than 100 characters" do
    @product.name = "x" * 101
    assert_not @product.valid?
  end

  # tests for description field
  test "description should be present" do
    @product.description = " "
    assert_not @product.valid?
  end

  test "description should not be longer than 255 characters" do
    @product.description = "x" * 256
    assert_not @product.valid?
  end

  # tests for price field
  test "price should be present" do
    @product.price = nil
    assert_not @product.valid?
  end

  test "price should be greater than 0" do
    @product.price = -1
    assert_not @product.valid?
    @product.price = 0
    assert @product.valid?
  end

  # tests for timesSaved field
  test "timesSaved should be present" do
    @product.timesSaved = nil
    assert_not @product.valid?
  end

  test "timesSaved should be greater than -1" do
    @product.timesSaved = -1
    assert_not @product.valid?
    @product.timesSaved = 0
    assert @product.valid?
  end

  # tests for timesPurchased field
  test "timesPurchased should be present" do
    @product.timesPurchased = nil
    assert_not @product.valid?
  end

  test "timesPurchased should be greater than -1" do
    @product.timesPurchased = -1
    assert_not @product.valid?
    @product.timesPurchased = 0
    assert @product.valid?
  end
end
