class ShowsController < ApplicationController
before_action :authenticate_user!

  def index
    @movie = Movie.find(params[:movie_id])
    @shows = @movie.shows.recent.paginate(page: params[:page], per_page: 4)
  end


end
