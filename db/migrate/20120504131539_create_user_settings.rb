class CreateUserSettings < ActiveRecord::Migration
  def change
    create_table :user_settings do |t|
      t.integer :userid
      t.text :content
      t.timestamps
    end
  end
end
