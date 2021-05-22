require "test_helper"

class CartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @cart = Cart.new(color: "Black", quantity: 1, size: "m", product_id: Product.first.id, user_id: User.first.id)
  end

  test "should be valid" do
    assert @cart.valid?
  end

  # tests for volor field
  test "color should be present" do
    @cart.color = " "
    assert_not @cart.valid?
  end

  # tests for quantity field
  test "quantity should be present" do
    @cart.quantity = nil
    assert_not @cart.valid?
  end

  test "quantity should be greater than 0" do
    @cart.quantity = 0
    assert_not @cart.valid?
  end

  # tests for size field
  test "size should be present" do
    @cart.size = ""
    assert_not @cart.valid?
  end

  # tests for product_id field
  test "product_id should be present" do
    @cart.product_id = nil
    assert_not @cart.valid?
  end

  # tests for user_id field
  test "user_id should be present" do
    @cart.user_id = nil
    assert_not @cart.valid?
  end
end
