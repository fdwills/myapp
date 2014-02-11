class AddAvatarToResources < ActiveRecord::Migration
  def change
    add_column :resources, :avatar, :string
  end
end
