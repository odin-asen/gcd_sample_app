class User < ActiveRecord::Base
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, :presence => true, :length => { :maximum => 50}
  validates :email, :format => { :with => email_regex }, :uniqueness => true
  attr_accessible :email, :name
end
