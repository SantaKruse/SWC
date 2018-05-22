class ChangeAverageVivivnoRatinToDecimal < ActiveRecord::Migration[5.0]
  def change
  	change_column :wines, :average_vivino_rating, :decimal
  end
end
