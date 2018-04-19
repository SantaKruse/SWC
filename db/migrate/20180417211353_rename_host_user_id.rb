class RenameHostUserId < ActiveRecord::Migration[5.0]
  def change
  	rename_column :events, :host_user_id, :user_id
  end
end
