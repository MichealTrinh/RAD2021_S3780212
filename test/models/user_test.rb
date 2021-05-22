require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(username: "Test User", password: "TestUser", email: "user@myapp.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  # tests for username field
  test "username should be present" do
    @user.username = " "
    assert_not @user.valid?
  end

  test "username should not be longer than 25 characters" do
    @user.username = "x" * 26
    assert_not @user.valid?
  end

  # tests for password field
  test "password should be present" do
    @user.password = " "
    assert_not @user.valid?
  end

  test "password should not be shorter than 8 characters" do
    @user.password = "x" * 7
    assert_not @user.valid?
  end

  test "password should not be longer than 20 characters" do
    @user.password = "x" * 21
    assert_not @user.valid?
  end

  # tests for email field
  test "email should be present" do
    @user.email = " "
    assert_not @user.valid?
  end

  test "email should not be longer than 100 characters" do
    @user.email = "x" * 100 + "@example.com"
    assert_not @user.valid?
  end

  test "good emails should pass" do
    # A list of valid emails
    valid_emails = %w[joe@apple.com TEST@EXP.ORG joe_s@a-School.net alex.smith@topshop.biz don+z@136.co]
    valid_emails.each do |email|
      @user.email = email
      assert @user.valid?, "#{email.inspect} should be valid"
    end
  end

  test "bad emails should be rejected" do
    invalid_emails = %w[joe@apple,com TEST@@EXP.ORG joe_s@a_School.net alex.smith@top shop.biz don+z@13+6.co]
    invalid_emails.each do |email|
      @user.email = email
      assert_not @user.valid?, "#{email.inspect} should be invalid"
    end
  end

  test "email addresses should be unique" do
    clone = @user.dup
    clone.email = @user.email.upcase
    @user.save
    assert_not clone.valid?
  end

  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Joe@RAd.oRg.AU"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end
end
