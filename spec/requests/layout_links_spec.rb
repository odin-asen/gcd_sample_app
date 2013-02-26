require 'spec_helper'

describe "LayoutLinks" do
  standardPageTest "should have a homepage at", "", ['title', content: "Home"]
  standardPageTest "should have a contact page at", 'contact', ['title', content: "Contact"]
  standardPageTest "should have a about page at", 'about', ['title', content: "About"]
  standardPageTest "should have a timetable page at", 'timetable', ['title', content: "Timetable"]
  standardPageTest "should have a help page at", 'help', ['title', content: "Help"]
end
