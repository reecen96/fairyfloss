class ApplicationController < ActionController::Base

before_action :fetch_user

  def fetch_user
#check if the user_id in the session has is the ID of a real user in our ARGF.each_line do |line|
  if session[:user_id].present?
    @current_user = User.find_by id: session[:user_id]
end
session[:user_id] = nil unless @current_user.present?
  end

  def check_if_logged_in
    unless @current_user.present?
      flash[:error] = 'You must be logged in to perform that action'
    redirect_to login_path
  end
end
end
