class User < ActiveRecord::Base
  require "modules/advanced_active_record.rb"
  include AdvancedActiveRecord
  
  attr_accessible :email, :fbid, :password, :twtid, :type, :username
  
  has_one :user_profile
  has_one :user_setting
  
  has_many :reviews  , :class_name => "UserReview" , :foreign_key => "source_id"
  has_many :other_users_reviews  , :class_name => "UserReview" , :foreign_key => "target_id"
  
  has_many :ratings , :class_name => "UserRating" , :foreign_key => "source_id" 
  has_many :other_users_ratings , :class_name =>  "UserRating" , :foreign_key => "target_id"
   
  has_many :posts
  has_many :post_responses
  has_many :post_response_messages, :through => :post_response
    
end