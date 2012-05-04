class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column  :users , :fbid , :string
    add_column :users , :twtid, :string
    add_column :users , :type , :string 
  end
end
