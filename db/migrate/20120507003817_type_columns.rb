class TypeColumns < ActiveRecord::Migration
  def up
     rename_column "post_categories" , "type" , "post_type" 
     rename_column "users" , "type", "user_type"
     rename_column "user_ratings", "type" , "rating_type"
  end

  def down
  end
end
