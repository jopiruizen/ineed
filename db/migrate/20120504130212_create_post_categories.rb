class CreatePostCategories < ActiveRecord::Migration
  def change
    create_table :post_categories do |t|
      #id,  value , desc, type ( need or provide )
      t.string :value
      t.string :desc
      t.integer :type #0 = need , 1 = provide
      t.timestamps
    end
  end
end
