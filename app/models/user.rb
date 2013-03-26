class User < ActiveRecord::Base
  validates :name, :presence => true
  attr_accessible :email, :name
end
