class AddStoreToQuiets < ActiveRecord::Migration[5.2]
  def change
    add_column :quiets, :store, :string
  end
end
