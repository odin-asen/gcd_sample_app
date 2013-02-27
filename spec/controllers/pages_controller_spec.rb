require 'spec_helper'

describe PagesController do
  render_views
  standardPageController('home', "should return the right title",
                         ['title', content: "#{BASE_TITLE} | Home"])
  standardPageController('contact', "should return the right title",
                         ['title', content: "#{BASE_TITLE} | Contact"])
  standardPageController('about', "should return the right title",
                         ['title', content: "#{BASE_TITLE} | About"])
  standardPageController('help', "should return the right title",
                         ['title', content: "#{BASE_TITLE} | Help"])
  standardPageController('timetable', "should return the right title",
                         ['title', content: "#{BASE_TITLE} | Timetable"])

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
