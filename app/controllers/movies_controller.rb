class MoviesController < ApplicationController
  before_action :movie_set, only: [:show]
  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def movie_set
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :overview, :phone_number, :rating, :url_poster)
  end
end
