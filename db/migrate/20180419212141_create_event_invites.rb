class CreateEventInvites < ActiveRecord::Migration[5.0]
  def change
    create_table :event_invites do |t|

      t.timestamps
    end
  end
end
