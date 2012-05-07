class CreatePostResponseMessages < ActiveRecord::Migration
  def change
    create_table :post_response_messages do |t|
      t.integer :user_id
      t.integer :post_response_id
      t.text :content
      t.timestamps
    end
  end
end
