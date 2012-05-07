class WebServicesController < ApplicationController

  def  user_create
    
    user = User.new;
    user.validate ["username" , "jopi"]
  end
  
  
end
