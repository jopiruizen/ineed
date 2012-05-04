class CreateUserRatings < ActiveRecord::Migration
  def change
    create_table :user_ratings do |t|
      t.integer :targetid
      t.integer :sourceid
      t.integer :type #0 bad , 1 good
      t.timestamps
    end
  end
end
