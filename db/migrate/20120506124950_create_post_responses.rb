class CreatePostResponses < ActiveRecord::Migration
  def change
    create_table :post_responses do |t|
      t.integer :user_id
      t.integer :post_id
      t.timestamps
    end
  end
end
