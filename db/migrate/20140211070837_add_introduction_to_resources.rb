class AddIntroductionToResources < ActiveRecord::Migration
  def change
    add_column :resources, :introduction, :blob
  end
end
