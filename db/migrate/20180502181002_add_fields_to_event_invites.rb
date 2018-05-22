class AddFieldsToEventInvites < ActiveRecord::Migration[5.0]
  def change
  	add_column :event_invites, :user_id, :integer
	add_column :event_invites, :event_id, :integer
  end
end
