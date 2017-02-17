class Admin::MoviesController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_require
  layout "admin"

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to admin_movies_path
      flash[:notice] = "create"
    else
      render :new
    end
  end


  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      redirect_to admin_movies_path
      flash[:notice] = "update"
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to admin_movies_path
    flash[:notice] = "delete"
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :description, :image)
  end

end
