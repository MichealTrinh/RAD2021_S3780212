require "test_helper"

class SubscriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @subscription = Subscription.new(email: "user@myapp.com")
  end

  test "should be valid" do
    assert @subscription.valid?
  end
end
