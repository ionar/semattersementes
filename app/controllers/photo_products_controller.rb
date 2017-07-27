class PhotoProductsController < ApplicationController
	def create
		@product = Product.find(params[:product_id])
		permitted_columns = params[:photo_product].permit(:photo, :product_id)
		@photo_product = @product.photo_products.create(permitted_columns)
		redirect_to edit_product_path(@product)
	end

	def destroy
		@product = Product.find(params[:product_id])
		@photo_product = @product.photo_products.find(params[:id])
		@photo_product.destroy
		redirect_to edit_product_path(@product)
	end
end
