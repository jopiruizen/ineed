class CreateUserReviews < ActiveRecord::Migration
  def change
    create_table :user_reviews do |t|
      t.integer :targetid
      t.integer :sourceid
      t.text  :content
      t.timestamps
    end
  end
end
