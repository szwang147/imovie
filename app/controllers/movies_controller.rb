class MoviesController < ApplicationController
before_action :authenticate_user!

  def index
    @movies = Movie.all
  end
  def show
    @movie = Movie.find(params[:id])
  end

  private
  def show_params
    params.require(:show).permit(:price)
  end
end
