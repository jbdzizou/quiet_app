class CreateQuiets < ActiveRecord::Migration[5.2]
  def change
    create_table :quiets do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
