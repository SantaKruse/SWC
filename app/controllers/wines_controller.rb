class WinesController < ApplicationController
	before_action :authenticate_user!
	before_action :find_wine, only: [:show, :edit, :update, :destroy]
	

	def index
		@wines = Wine.all
	end

	def user_index
		@wines = Wine.where(user_id: current_user)
	end

	def show 
    	@wine = Wine.find(params[:id])  
  	end

	def new
		@wine = current_user.wines.build
	end

	def create
		@wine = current_user.wines.build(wine_params)

		if @wine.save
			redirect_to wines_path
		else
			render 'new'
		end
	end

	def edit
		@wine = Wine.find(params[:id])
	end

	def update
		if @wine.update(wine_params)
			redirect_to wines_path
		else
			render 'edit'
		end
	end

	def destroy
		@wine.destroy
		redirect_to wines_path
	end

	private

	def find_wine
		@wine = Wine.find(params[:id])
	end

	def wine_params
		params.require(:wine).permit(:user_id, :name, :average_vivino_rating, :average_vivino_price, :winery, :grapes, :region, :regional_styles, :food_pairing, :image, :image_cache)
	end
end
