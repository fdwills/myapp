class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id, default: 0
      t.integer :post_id, null: false
      t.string :title, null: false
      t.binary :content, null: false
      t.column :state, :tinyint, null: false, default: 0
      t.timestamps
    end
  end
end
