require 'spec_helper'

describe User do
  before(:each) do
    @attr = {:name => "John", :email => "john@example.com"}
  end
  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end
  it "should require a name" do
    no_name_user = User.new(@attr.merge(:name => ""))
    no_name_user.should_not be_valid
  end
  it "should reject names that are too long" do
    long_name = "a"*51
    long_name_user = User.new(@attr.merge(:name => long_name))
    long_name_user.should_not be_valid
  end
  it "should accept a valid email address" do
    valid_user = User.new(@attr)
    valid_user.should be_valid
  end
  it "should not accept an invalid email address" do
    invalid_user = User.new(@attr.merge(:email => " "))
    invalid_user.should_not be_valid
  end
  it "should reject duplicate email addresses" do
    User.create!(@attr)
    user_duplicate = User.new(@attr)
    user_duplicate.should_not be_valid
  end
end
