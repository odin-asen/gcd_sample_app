require 'spec_helper'

describe "LayoutLinks" do
  testPageStandardIntegration "should have a homepage at", "",
      ['title', content: "Home"]
  testPageStandardIntegration "should have a contact page at", 'contact',
      ['title', content: "Contact"]
  testPageStandardIntegration "should have a about page at", 'about',
      ['title', content: "About"]
  testPageStandardIntegration "should have a timetable page at", 'timetable',
      ['title', content: "Timetable"]
  testPageStandardIntegration "should have a help page at", 'help',
      ['title', content: "Help"]
  testPageStandardIntegration "should have a signup page at", 'signup',
      ['title', content: "Sign up"]
end
