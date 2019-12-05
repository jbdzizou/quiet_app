class AddQuietIdToInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :quiet_id, :bigint
  end
end
