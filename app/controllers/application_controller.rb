class ApplicationController < ActionController::Base

  def forem_user
    current_user
  end

  helper_method :forem_user

  respond_to :html, :json
  protect_from_forgery

end
