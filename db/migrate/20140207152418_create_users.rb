class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.timestamps
    end
    drop_table :foos
  end
end
