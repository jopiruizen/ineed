class PostsControllerController < ApplicationController

  def create
    render :layout => false
    
    @user = User.find(params[:user_id])
    @success = false 
    if @user != nil
       post = Post.crate(:user_id => user.id, :category => params[:category], :content => params[:content] , :type => params[:type] )
       @succes = true
    end
       
  end
   
  def destroy
  
  end 
   
end
