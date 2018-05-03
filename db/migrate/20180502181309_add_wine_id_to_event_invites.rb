class AddWineIdToEventInvites < ActiveRecord::Migration[5.0]
  def change
  	add_column :event_invites, :wine_id, :integer
  end
end
