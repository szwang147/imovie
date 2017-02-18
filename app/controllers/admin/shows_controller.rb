class Admin::ShowsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_require
  layout "admin"

  def index
    @shows = Show.all
  end

  def new
    @show = Show.new
    @movies = Movie.all

  end


  def create
    @show = Show.new(show_params)

    if @show.save
      redirect_to admin_shows_path
      flash[:notice] = "create"
    else
      render :new
    end
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])

    if @show.update(show_params)
      redirect_to admin_shows_path
      flash[:notice] = "update"
    else
      render :edit
    end
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy
    flash[:notice] = "delete"
  end

  private
  def show_params
    params.require(:show).permit(:price, :timetable, :movie_id)
  end
end
