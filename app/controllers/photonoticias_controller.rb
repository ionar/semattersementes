class PhotonoticiasController < ApplicationController
	def create
		@news = News.find(params[:news_id])
		permitted_columns = params[:photonoticia].permit(:image)
		@photonoticia = @news.photonoticias.create(permitted_columns)
		redirect_to news_path(@news)
	end

	def destroy
		@news = News.find(params[:news_id])
		@photonoticia = @news.photonoticias.find(params[:id])
		@photonoticia.destroy
		redirect_to news_path(@news)
	end
end
