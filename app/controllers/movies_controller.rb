class MoviesController < ApplicationController

  def index

  end

  def new
    @movie = Movie.new
  end

  def create
    redirect_to root_path
  end
end