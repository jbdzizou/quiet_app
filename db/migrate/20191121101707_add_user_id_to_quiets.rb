class AddUserIdToQuiets < ActiveRecord::Migration[5.2]
  def change
    add_column :quiets, :user_id, :integer
  end
end
