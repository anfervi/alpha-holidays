class ApplicationController < ActionController::Base
	include Pundit
  protect_from_forgery with: :exception
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  layout :layout

  private
    def layout
      is_a?(Devise::SessionsController) ? false : "application"
      !devise_controller? && "application"
    end

  protected
    def authenticate_user!
      if user_signed_in?
        super
      else
        redirect_to login_path, :notice => ''
      end
    end
end




