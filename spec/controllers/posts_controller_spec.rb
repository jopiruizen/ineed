require 'spec_helper'

describe PostsController do
  
  before (:all) do 
    
    #need posts
     FactoryGirl.create(:post , :content => "flash, Javascript, Rails")
     FactoryGirl.create(:post , :content => "flash, actionscript, IOS")
     FactoryGirl.create(:post , :content => "PHP, IOS, JAVACRIPT")
     FactoryGirl.create(:post , :content => "ASP, actionscript, javascript" )
    
    #prvoide posts
    
     FactoryGirl.create(:post , :content => "Flash, Javascript, Rails" , :post_type => 1)
     FactoryGirl.create(:post , :content => "flash, actionscript, IOS" , :post_type => 1)
     FactoryGirl.create(:post , :content => "PHP, IOS, JAVACRIPT" , :post_type => 1)
     FactoryGirl.create(:post , :content => "ASP, actionscript, javascript" , :post_type => 1 )
     
     @post =  Post.find(1)
     
     @user = FactoryGirl.create(:user)
  end
    
  describe "REST_SERVICE 'related'" do
    it "should show related posts from a particular post" do
      get :related , :post_id => @post.id
      response.should be_success
    end
  end 
    
   describe "REST_SERVICE 'needs'" do
   
      it "should display all the user need postings" do
         get :needs , :user_id => @user.id
         response.should be_success
      end
  end
  
    
 
   
  
  
 
  
end
