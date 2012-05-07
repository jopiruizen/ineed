class UpdateTables < ActiveRecord::Migration
  def up
    rename_column "user_profiles" , "userid" , "user_id" 
    rename_column "posts" , "userid" , "user_id" 
    rename_column "user_settings" , "userid" , "user_id" 
    
    rename_column "user_reviews" , "targetid" , "target_id"
    rename_column "user_reviews" , "sourceid" , "source_id"
    
    rename_column "user_ratings" , "targetid" , "target_id"
    rename_column "user_ratings" , "sourceid" , "source_id"
    
    rename_column "post_messages" , "postid" , "post_id"  
    rename_column "message_logs" , "pmid" , "post_message_id" 
  end

  def down
    
  end
end
