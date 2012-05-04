class User < ActiveRecord::Base
  attr_accessible :email, :fbid, :password, :twtid, :type, :username
end
