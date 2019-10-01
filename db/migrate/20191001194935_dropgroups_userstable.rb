class DropgroupsUserstable < ActiveRecord::Migration[6.0]
  def up 
    drop_table :groups_users
  end 
  def down 
    raise ActiveRecord::IrreversibleMigration 
  end 
  
end
