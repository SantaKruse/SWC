class AddFieldsToEvents < ActiveRecord::Migration[5.0]
  def change
  	add_column :events, :date, :date
  	add_column :events, :time, :time
  	add_column :events, :location, :string
  	add_column :events, :theme, :string
  	add_column :events, :host_user_id, :integer
  end
end
