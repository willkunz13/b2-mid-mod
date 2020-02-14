class MoviesActorsController < ApplicationController

	def create
		movie = Movie.find(params[:movie_id])
		binding.pry
		actor = Actor.where("name = #{}")
	end
end
