class CreatePostMessages < ActiveRecord::Migration
  def change
    create_table :post_messages do |t|
      t.integer :postid
      t.timestamps
    end
  end
end
