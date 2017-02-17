class WelcomeController < ApplicationController
  def index
    flash[:notice] = "notice"
    flash[:alert] = "notice"
    flash[:warning] = "notice"
  end

end
