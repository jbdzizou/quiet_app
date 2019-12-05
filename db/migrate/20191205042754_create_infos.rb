class CreateInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :infos do |t|
      t.string :name
      t.text :road
      t.text :description

      t.timestamps
    end
  end
end
