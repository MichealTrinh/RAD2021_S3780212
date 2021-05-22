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
end
