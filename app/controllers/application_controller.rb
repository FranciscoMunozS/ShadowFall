class ApplicationController < ActionController::Base
  
  rescue_from CanCan::AccessDenied do
    flash[:alert] = 'Access denied!'
    redirect_to posts_path
  end

end
