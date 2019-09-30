class CreateKarmas < ActiveRecord::Migration[6.0]
  def change
    create_table :karmas do |t|
      t.integer :user_id
      t.string :comment

      t.timestamps
    end
  end
end
