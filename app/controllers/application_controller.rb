class ApplicationController < ActionController::Base
  before_action :set_current_action

  def set_current_action
    @current_user = User.find_by(id: session[:user_id])
  end
end
