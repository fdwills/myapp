class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.column :state, :tinyint, null: false, default: 0
      t.column :s_type, :tinyint, null: false
      t.timestamps
    end
  end
end
