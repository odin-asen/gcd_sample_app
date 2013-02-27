require 'spec_helper'

describe UserController do
  render_views
  testControllerActionStandard 'new', "should return the right title",
                         ['title', content: "#{BASE_TITLE} | Sign up"]
end
