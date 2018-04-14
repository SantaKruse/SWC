class AddFieldsToWines < ActiveRecord::Migration[5.0]
  def change
  	add_column :wines, :user_id, :integer
  	add_column :wines, :name, :string
  	add_column :wines, :average_vivino_rating, :integer
  	add_column :wines, :average_vivino_price, :decimal
  	add_column :wines, :winery, :string
  	add_column :wines, :grapes, :string
  	add_column :wines, :region, :string
  	add_column :wines, :regional_styles, :string
  	add_column :wines, :food_pairing, :string
  end
end
