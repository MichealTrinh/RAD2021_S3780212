require "test_helper"

class SizeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @size = Size.new(product_id: Product.first.id)
  end

  test "should be valid" do
    assert @size.valid?
  end

  # tests for product_id field
  test "product_id should be present" do
    @size.product_id = nil
    assert_not @size.valid?
  end
end
