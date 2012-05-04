class CreateMessageLogs < ActiveRecord::Migration
  def change
    create_table :message_logs do |t|
      t.integer :pmid
      t.integer :userid
      t.text  :content
      t.timestamps
    end
  end
end
