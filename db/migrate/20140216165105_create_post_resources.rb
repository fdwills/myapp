class CreatePostResources < ActiveRecord::Migration
  def change
    create_table :post_resources do |t|
      t.integer :post_id, null: false
      t.integer :resource_id, null: false
      t.timestamps
    end
  end
end
