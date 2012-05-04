class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      #id, userid, type (need: provide) , category , content,   status( active, close, lapsed), priority: 1,2,3
      t.integer :userid
      t.integer :type 
      t.string :category
      t.text :content
      t.string :status
      t.integer :priority
      t.timestamps
    end
  end
end
