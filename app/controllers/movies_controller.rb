class MoviesController < ApplicationController

	def index
		 @movies = Movie.all
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def edit
		@movie = Movie.find(params[:id])
	end
	
	def update
		@movie = Movie.find(params[:id])
		movie_params = params[:movie].permit(:title, :description, :released_on,
						:rating, :total_gross)
		@movie.update(movie_params)
		@movie.save
		redirect_to @movie
	end


end
