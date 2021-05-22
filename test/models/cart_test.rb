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
end
