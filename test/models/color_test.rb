require "test_helper"

class ColorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @color = Color.new(product_id: Product.first.id)
  end

  test "should be valid" do
    assert @color.valid?
  end

  # tests for product_id field
  test "product_id should be present" do
    @color.product_id = nil
    assert_not @color.valid?
  end
end
