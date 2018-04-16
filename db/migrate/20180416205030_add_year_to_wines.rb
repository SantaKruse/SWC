class AddYearToWines < ActiveRecord::Migration[5.0]
  def change
  	add_column :wines, :year, :integer
  	add_column :wines, :owner_rating, :integer
  	add_column :wines, :owner_price, :decimal
  end
end
