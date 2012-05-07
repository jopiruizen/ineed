class DropPostMessageTable < ActiveRecord::Migration
  def up
    drop_table :post_messages
  end

  def down
  end
end
