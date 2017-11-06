class AddColumnToSessions < ActiveRecord::Migration[5.0]
  def up
  	add_column :sessions, :admin, :boolean, default: false
  end
  def down
  	remove_column :sessions, :admin
  end
end


