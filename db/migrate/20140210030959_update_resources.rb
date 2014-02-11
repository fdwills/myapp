class UpdateResources < ActiveRecord::Migration
  def change
    remove_column :resources, :s_type
    add_column  :resources, :s_type, :tinyint, null: false, default: 0
  end
end
