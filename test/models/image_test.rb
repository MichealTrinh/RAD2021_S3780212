require "test_helper"

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @image = Image.new(name: "test_image.png", alt: "A test image.", product_id: Product.first.id)
  end

  test "should be valid" do
    assert @image.valid?
  end

  # tests for name field
  test "name should be present" do
    @image.name = " "
    assert_not @image.valid?
  end

  test "name should not be longer than 75 characters" do
    @image.name = "x" * 76
    assert_not @image.valid?
  end

  # tests for alt field
  test "alt should not be longer than 255 characters" do
    @image.alt = "x" * 256
    assert_not @image.valid?
  end

  # tests for product_id field
  test "product_id should be present" do
    @image.product_id = nil
    assert_not @image.valid?
  end
end
