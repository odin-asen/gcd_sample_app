require 'spec_helper'

describe PagesController do
  base_title = "Ruby on Rails Tutorial Sample App"
  render_views
  standardPageController('home', "should return the right title",
                         ['title', content: "#{base_title} | Home"])
  standardPageController('contact', "should return the right title",
                         ['title', content: "#{base_title} | Contact"])
  standardPageController('about', "should return the right title",
                         ['title', content: "#{base_title} | About"])
  standardPageController('help', "should return the right title",
                         ['title', content: "#{base_title} | Help"])
  standardPageController('timetable', "should return the right title",
                         ['title', content: "#{base_title} | Timetable"])

  describe "GET 'timetable'" do
    it "should return the right table headers" do
      get 'timetable'
      response.should have_selector("th", content: "Class")
      response.should have_selector("th", content: "Time")
      response.should have_selector("th", content: "Room")
      response.should have_selector("th", content: "Teacher")
    end
  end
end
