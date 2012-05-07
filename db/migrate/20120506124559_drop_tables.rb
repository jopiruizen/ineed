class DropTables < ActiveRecord::Migration
  def up
  end

  def down
    drop_table :post_messages
    drop_table :message_logs
  end
end
