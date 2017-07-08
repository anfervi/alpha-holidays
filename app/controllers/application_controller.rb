# ApplicationController
class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected

    def authenticate_user!
      if user_signed_in?
        super
      else
        redirect_to login_path, { notice: 'if you want to add a notice' }
      end
    end
end
