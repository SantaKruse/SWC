class ChangeAverageOwnerRatingToDecimal < ActiveRecord::Migration[5.0]
  def change
  	change_column :wines, :owner_rating, :decimal
  end
end
