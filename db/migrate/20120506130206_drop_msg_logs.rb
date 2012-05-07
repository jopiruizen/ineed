class DropMsgLogs < ActiveRecord::Migration
  def up
    drop_table :message_logs
  end

  def down
  end
end
