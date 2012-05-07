class CreatePostMessages < ActiveRecord::Migration
  def change
    drop_table :post_messages
    
    create_table :post_messages do |t|
      t.integer :user_id
      t.integer :post_response_id
      t.text  :content
      t.timestamps
    end
  end
end
