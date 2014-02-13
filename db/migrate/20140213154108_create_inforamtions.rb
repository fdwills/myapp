class CreateInforamtions < ActiveRecord::Migration
  def change
    create_table :inforamtions do |t|
      t.string :title, null: false
      t.binary :content, null: false
      t.timestamps
    end
  end
end
