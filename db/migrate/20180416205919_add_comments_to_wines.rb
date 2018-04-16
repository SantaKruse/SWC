class AddCommentsToWines < ActiveRecord::Migration[5.0]
  def change
  	add_column :wines, :comments, :text
  end
end
