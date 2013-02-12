require 'spec_helper'

describe PagesController do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  render_views
  
  describe "GET 'home'" do
    it "should return the right title" do
      get 'home'
      response.should have_selector("title", content: "#{base_title} | Home")
    end
  end

  describe "GET 'contact'" do
    it "should return the right title" do
      get 'contact'
      response.should have_selector("title", content: "#{base_title} | Contact")
    end
  end

  describe "GET 'about'" do
    it "should return the right title" do
      get 'about'
      response.should have_selector("title", content: "#{base_title} | About")
    end
  end
  
  describe "GET 'timetable'" do
    it "should return the right title" do
      get 'timetable'
      response.should have_selector("title", content: "#{base_title} | Timetable")
    end
    it "should return the right table headers" do
      get 'timetable'
      response.should have_selector("th", content: "Class")
      response.should have_selector("th", content: "Time")
      response.should have_selector("th", content: "Room")
      response.should have_selector("th", content: "Teacher")
    end
  end
end
