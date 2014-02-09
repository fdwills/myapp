class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.integer :user_id, null: false
      t.binary :content, null: false
      t.column :state, :tinyint, default: 0
      t.timestamps
    end
  end
end
