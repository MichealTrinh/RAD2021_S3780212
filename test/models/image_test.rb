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
end
