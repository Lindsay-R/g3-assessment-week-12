class HomeController < ApplicationController
  def index
    @movies = Movie.order(:year)
  end

  def show
    @movie = Movie
  end

  def new
    @movie = Movie.new
  end


end