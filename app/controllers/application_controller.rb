class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def admin_require
    if !current_user.admin?
      redirect_to "/", alert:"you are not admin"
    end  
  end
end
