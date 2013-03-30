require 'spec_helper'

describe UserController do
  render_views
  testControllerActionStandard 'new', "should return the right title",
                         ['title', content: "#{BASE_TITLE} | Sign up"]
  describe "GET 'show'" do
    before(:each) do
      @user = FactoryGirl.create(:user)
    end
    it "should be successful" do
      get :show, :id => @user
      response.should be_success
    end
    it "should find the right user" do
      get :show, :id => @user
      assigns(:user).should == @user
    end
  end
end
