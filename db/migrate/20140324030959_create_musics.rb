class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.column :state, :tinyint, null: false, default: 0
      t.column :s_type, :tinyint, null: false, default: 0
      t.string :source, null: false
      t.binary :introduction
      t.timestamps
    end
  end
end
