require 'spec_helper'

describe "LayoutLinks" do
  it "should have a homepage at '/' " do
    get '/'
    response.should have_selector('title', :content => "Home")
  end
  it "should have a contact page at '/contact' " do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end
  it "should have an about page at '/about' " do
    get '/about'
    response.should have_selector('title', :content => "About")
  end
  it "should have a timetable page at '/timetable' " do
    get '/timetable'
    response.should have_selector('title', :content => "Timetable")
  end
end