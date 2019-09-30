class CreatePrefills < ActiveRecord::Migration[6.0]
  def change
    create_table :prefills do |t|
      t.string :selection
      t.integer :user_id

      t.timestamps
    end
  end
end
