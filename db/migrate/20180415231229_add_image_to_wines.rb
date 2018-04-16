class AddImageToWines < ActiveRecord::Migration[5.0]
  def change
	add_column :wines, :image, :string
  end
end
