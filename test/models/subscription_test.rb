require "test_helper"

class SubscriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @subscription = Subscription.new(email: "subscription@myapp.com")
  end

  test "should be valid" do
    assert @subscription.valid?
  end

  # tests for email field
  test "email should be present" do
    @subscription.email = " "
    assert_not @subscription.valid?
  end

  test "email should not be longer than 100 characters" do
    @subscription.email = "x" * 100 + "@example.com"
    assert_not @subscription.valid?
  end

  test "good emails should pass" do
    # A list of valid emails
    valid_emails = %w[joe@apple.com TEST@EXP.ORG joe_s@a-School.net alex.smith@topshop.biz don+z@136.co]
    valid_emails.each do |email|
      @subscription.email = email
      assert @subscription.valid?, "#{email.inspect} should be valid"
    end
  end

  test "bad emails should be rejected" do
    invalid_emails = %w[joe@apple,com TEST@@EXP.ORG joe_s@a_School.net alex.smith@top shop.biz don+z@13+6.co]
    invalid_emails.each do |email|
      @subscription.email = email
      assert_not @subscription.valid?, "#{email.inspect} should be invalid"
    end
  end

  test "email addresses should be unique" do
    clone = @subscription.dup
    clone.email = @subscription.email.upcase
    @subscription.save
    assert_not clone.valid?
  end

  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Joe@RAd.oRg.AU"
    @subscription.email = mixed_case_email
    @subscription.save
    assert_equal mixed_case_email.downcase, @subscription.reload.email
  end
end
