class RemoveAgeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :age
    add_column :users, :birthday, :datetime
  end
end
