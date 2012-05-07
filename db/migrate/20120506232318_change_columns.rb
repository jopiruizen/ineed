class ChangeColumns < ActiveRecord::Migration
  def up
    rename_column "posts" , "type" , "post_type" 
  end

  def down
  end
end
