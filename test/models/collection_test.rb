require "test_helper"

class CollectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @collection = Collection.new(name: "Test Collection")
  end

  test "should be valid" do
    assert @collection.valid?
  end

  # tests for name field
  test "name should be present" do
    @collection.name = " "
    assert_not @collection.valid?
  end

  test "name should not be longer than 25 characters" do
    @collection.name = "x" * 26
    assert_not @collection.valid?
  end
end
