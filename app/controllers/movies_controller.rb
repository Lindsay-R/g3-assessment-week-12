class MoviesController < ApplicationController


  def show
    @movie = Movie
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(name: params[:name], year: params[:year], synopsis: params[:synopsis])
    if @movie.save
      redirect_to root_path
      flash[:notice]= "Movie was created successfully!"

    else
      @movie.errors[:base] << "Your movie could not be created"
      render :new
    end
  end

end