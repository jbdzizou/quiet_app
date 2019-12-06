class AddRoadToQuiets < ActiveRecord::Migration[5.2]
  def change
    add_column :quiets, :road, :text
    add_column :quiets, :recommend, :text
  end
end
