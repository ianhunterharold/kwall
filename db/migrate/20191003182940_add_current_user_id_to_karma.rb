class AddCurrentUserIdToKarma < ActiveRecord::Migration[6.0]
  def change
    add_column :karmas, :current_user_id, :integer
  end
end
