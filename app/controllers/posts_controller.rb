class PostsController < ApplicationController

  def create
    render :layout => false
    @user = User.find(params[:user_id])
    @success = false 
    if @user != nil
       post = Post.crate(:user_id => user.id, :category => params[:category], :content => params[:content] , :type => params[:type] )
       @succes = true
    end
  end
  
  
  def needs
    #post with post_type = 0
    results =  Post.needs(params[:user_id])
    puts "needs: #{results.to_json}"  
    render :json => results;
  end
  
  def provides
    #post with post_type = 1
     
  end
  
  def related
    #puts "Params: #{params[:post_id]}"
    #puts "#{Post.all}"
    post = Post.find( params[:post_id] )
    related = []
    if post != nil
      puts "#{post.content}"
      related_posts = post.related_posts 
    end 
    render :json => related_posts 
    
  end
  
end
