class AddStatusToSessions < ActiveRecord::Migration[5.0]
  def up
  	add_column :sessions, :status, :integer
  end
  def down
  	remove_column :sessions, :status
  end
end
