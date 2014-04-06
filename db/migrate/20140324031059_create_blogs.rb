class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.column :state, :tinyint, null: false, default: 0
      t.string :tag
      t.binary :content
      t.timestamps
    end
  end
end
