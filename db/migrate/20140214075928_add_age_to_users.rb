class AddAgeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :age, :integer, default: 0
    add_column :users, :likes, :string
    add_column :users, :pref, :string
    add_column :users, :homepage, :string
  end
end
