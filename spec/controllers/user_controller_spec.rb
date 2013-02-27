require 'spec_helper'

describe UserController do
  base_title = "Ruby on Rails Tutorial Sample App"
  render_views
  describe "GET 'new'" do
    it "should return the right title" do
      get 'new'
      response.should have_selector('title', content: "#{base_title} | Sign up")
    end
  end
end
