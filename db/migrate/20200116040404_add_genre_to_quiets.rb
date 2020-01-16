class AddGenreToQuiets < ActiveRecord::Migration[6.0]
  def change
    add_column :quiets, :genre, :string
  end
end
